defmodule AdminWeb.Layouts do
  use AdminWeb, :html
  import AdminWeb.Sidebar
  import AdminWeb.Nav

  embed_templates "layouts/*"
end
