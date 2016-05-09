defmodule ExAdminDemo.ExAdmin.Address do
  use ExAdmin.Register

  register_resource ExAdminDemo.Address do
    form address do
      inputs do
        input address, :street
        input address, :phone_number
        input address, :type, collection: ["my house": "home", "my job": "work", "other type": "other"]
        # input address, :type, collection: ~w(Home Work Other)
      end
    end
  end
end
