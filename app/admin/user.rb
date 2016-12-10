ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :email, :password, :password_confirmation, :img_contact
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :sign_in_count
    actions
  end

=begin
  index as: :block do |product|
    div for: product do
      resource_selection_cell product
      h2  auto_link     product.name
      div simple_format product.description
    end
  end
=end

=begin
  index as: :grid do |product|
    link_to image_tag(product.img_product), admin_regalo_path(product)
  end
=end

  filter :id
  filter :email
  filter :name

  form do |f|
    f.inputs "Regalo Details" do
      f.input :email
      f.input :name
      f.input :password
      f.input :password_confirmation
      f.input :img_contact, as: :file, :image_preview => true
    end
    f.actions
  end

end
