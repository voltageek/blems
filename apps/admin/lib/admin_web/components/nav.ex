defmodule AdminWeb.Nav do
  use Phoenix.Component

  attr :items, :list, required: true

  def nav(assigns) do
    # items = assign(:items, :size, length(assigns.items))
    items = assigns[:items] || []

    ~H"""
        <nav class="fixed w-full bg-white border-gray-200 px-2 sm:px-4 py-2.5 rounded  border-b z-30">
            <div class="flex flex-wrap justify-between items-center">
                <div class="flex justify-start items-center">

                    <a class="flex mr-4" href="#">
                        <img class="mr-3 h-8" src="https://flowbite.s3.amazonaws.com/logo.svg" alt="FlowBite Logo" />
                        <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">BLEMS - Admin</span>
                    </a>

                </div>
                <div class="flex items-center lg:order-2">
                    <div class="hidden w-full md:block md:w-auto" id="navbar-default">
                        <ul
                            class="flex flex-col p-4 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:text-sm md:font-medium md:border-0 md:bg-white md:dark:bg-gray-900">
                            <.nav_item
                                :for={{item, index} <- Enum.with_index(@items)}
                                navigate={item[:navigate]}
                                text={item[:text]}
                            />


                        </ul>
                    </div>
                    <button
                        class="flex mx-3 text-xl bg-gray-800 rounded-full md:mr-0  ring-2 ring-gray-700 focus:ring-4 focus:ring-gray-800"
                        id="user-menu-button" data-dropdown-toggle="dropdown" type="button" aria-expanded="false">
                        <span class="sr-only">Open user menu</span>
                        <div
                            class="relative inline-flex items-center justify-center w-12 h-12 overflow-hidden bg-gray-100 rounded-full">
                            <span class="font-semibold text-gray-600">UI</span>
                        </div>
                    </button>
                    <!-- Dropdown menu -->
                    <div class="hidden z-50 my-4 w-72 text-base list-none bg-white rounded divide-y divide-gray-100 shadow"
                        id="dropdown">
                        <div class="py-3 px-4">
                            <span class="block text-md font-semibold text-gray-900">USER FULL NAME</span>
                            <span class="block text-sm font-light text-gray-500 truncate">USER MAIL</span>
                        </div>
                        <ul class="py-1 font-light text-gray-500" aria-labelledby="dropdown">
                            <li>
                                <a class="block py-2 px-4 text-md hover:bg-gray-100" href="#">My
                                    profile</a>
                            </li>
                        </ul>
                        <ul class="py-1 font-light text-gray-500" aria-labelledby="dropdown">
                            <li>
                                <a class="block py-2 px-4 text-md hover:bg-gray-100" href="#">Sign
                                    out</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    """
  end

  attr :type, :string, default: "middle"
  attr :navigate, :string, default: "/"
  attr :text, :string, required: true

  defp nav_item(assigns) do
    ~H"""
    <li>
        <a class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0"
        href="#" aria-current="page">
        <%= @text %>
        </a>
    </li>
    """
  end
end
