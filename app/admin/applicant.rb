ActiveAdmin.register Applicant do

  permit_params :name, :email, :phone, :company, :address, :city, :state, :zip

  index do
    column :name
    column :email
    column :phone
    column :company
    column :address
    column :city
    column :state
    column :zip
    column :resume do |job|
      link_to "Link", job.resume.url
    end
    actions
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
