json.array!(@personal_trainings) do |personal_training|
  json.extract! personal_training, :id
  json.url personal_training_url(personal_training, format: :json)
end
