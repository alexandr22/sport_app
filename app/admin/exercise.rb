ActiveAdmin.register Exercise do
  permit_params :name, :personal_training_id, :description, :quantity, :attempt
end
