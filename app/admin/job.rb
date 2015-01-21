ActiveAdmin.register Job do

  permit_params :title, :industry, :location, :description, :email

  form do |f|
    f.inputs "Job" do
      f.input :title
      f.input :industry
      f.input :location
      f.input :email
      f.input :description, as: :wysihtml5
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
