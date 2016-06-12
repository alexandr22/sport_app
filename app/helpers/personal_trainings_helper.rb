module PersonalTrainingsHelper
  def user_info(u)
    "#{u.profile.try(:name)}, возраст - #{u.profile.try(:age)}, вес - #{u.profile.try(:weight)}, рост - #{u.profile.try(:height)}".to_s
  end
end
