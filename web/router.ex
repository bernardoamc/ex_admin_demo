defmodule ExAdminDemo.Router do
  use ExAdminDemo.Web, :router
  use ExAdmin.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ExAdminDemo do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # setup the ExAdmin routes on /admin
  scope "/admin", ExAdmin do
    pipe_through :browser
    admin_routes
  end

  # Other scopes may use custom stacks.
  # scope "/api", ExAdminDemo do
  #   pipe_through :api
  # end
end
