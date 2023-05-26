ActiveAdmin.register Post do
  permit_params :title, :text, :likes_count, :tags, :user_id
end
