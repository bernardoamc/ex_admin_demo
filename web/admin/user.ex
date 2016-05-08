defmodule ExAdminDemo.ExAdmin.User do
  use ExAdmin.Register

  register_resource ExAdminDemo.User do
    form user do
      inputs do
        input user, :name
        input user, :age
      end

      inputs "Addresses" do
        has_many user, :addresses, fn(p) ->
          input p, :street
          input p, :phone_number
          input p, :type, collection: ~w(Home Work Other)
        end
      end
    end
  end
end
