ActiveAdmin.register Regalo do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :price_min, :price_max, :link, :img_product, :state, :user_id
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
    column :name
    column :user_id
    column :description
    column :price_min
    column :price_max
    column :link
    column :state
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

  filter :name
  filter :user_id
  filter :price_min
  filter :price_max
  filter :state

  form do |f|
    f.inputs "Regalo Details" do
      f.input :name
      f.input :description
      f.input :price_min
      f.input :price_max
      f.input :link
      f.input :link2
      f.input :img_product, as: :file, :image_preview => true
      f.input :state
      f.input :user_id
    end
    f.actions
  end

end
