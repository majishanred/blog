ActiveAdmin.register User do
  permit_params :email, :first_name, :last_name, :bio
end
