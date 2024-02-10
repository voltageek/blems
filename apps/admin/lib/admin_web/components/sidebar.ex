defmodule AdminWeb.Sidebar do
  use Phoenix.Component
  use AdminWeb, :html

  attr :items, :list, required: true

  def sidebar(assigns) do
    # items = assign(:items, :size, length(assigns.items))
    items = assigns[:items] || []

    ~H"""
    <aside class="fixed top-0 left-0 w-64 h-full pt-16 br z-20" aria-label="Sidebar">
      <div class="px-3 py-4 overflow-y-auto rounded bg-gray-50 min-h-screen border-r border-gray-300">
        <ul class="space-y-2">
          <.sidebar_item
            :for={{item, _index} <- Enum.with_index(@items)}
            has_children={item_has_children(item)}
            navigate={item[:navigate]}
            icon={item[:icon]}
            text={item[:text]}
            children={item[:children]}
          />
        </ul>
      </div>
    </aside>
    """
  end

  defp item_has_children(item), do: Map.has_key?(item, :children)

  attr :navigate, :string, default: "/"
  attr :text, :string, required: true
  attr :icon, :string, required: false, default: "hero-information-circle"
  attr :has_children, :boolean, required: false
  attr :children, :list, required: false

  defp sidebar_item(assigns) when assigns.has_children == true do
      children = assigns[:children] || []
      dbg(assigns[:icon])
    ~H"""
    <li>
      <button
        type="button"
        class="flex items-center w-full py-2 text-base font-normal text-gray-900 transition duration-75 rounded-lg group hover:bg-gray-100"
        aria-controls="dropdown-receipts"
        data-collapse-toggle="dropdown-receipts"
      >
        <span class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900">
        <.icon name={@icon} class="h-4 w-4" />
        </span>
        <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>
            <%= @text %>
        </span>
        <span class="flex-shrink-0 w-6 h-6 text-gray-500">
        <.icon name="hero-chevron-down" class="h-4 w-4" />
        </span>
      </button>
      <ul id="dropdown-receipts" class="hidden py-2 space-y-1 pl-2 ml-3 border-gray-100 border-l-2">
        <.sidebar_item
            :for={{item, index} <- Enum.with_index(@children)}
            has_children={item_has_children(item)}
            navigate={item[:navigate]}
            icon={item[:icon]}
            text={item[:text]}
          />

      </ul>

    </li>
    """
  end

  defp sidebar_item(assigns) do
    dbg(assigns[:icon])

    ~H"""
    <li>
      <.link
        navigate={@navigate}
        class="flex items-center py-2 text-base font-normal text-gray-900 rounded-lg hover:bg-gray-100"
      >
        <span class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 group-hover:text-gray-900">
        <.icon name={@icon} class="h-4 w-4" />
        </span>

        <span class="ml-3"><%= @text %></span>
      </.link>
    </li>
    """
  end
end
