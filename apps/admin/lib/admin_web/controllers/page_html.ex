defmodule AdminWeb.PageHTML do
  use AdminWeb, :html
  import AdminWeb.Sidebar
  import AdminWeb.Nav

  embed_templates "page_html/*"
end
