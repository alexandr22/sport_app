json.array!(@profiles) do |profile|
  json.extract! profile, :id, :allow_create_training, :name, :age, :user_id, :is_trainer, :weight, :height, :stage
  json.url profile_url(profile, format: :json)
end
