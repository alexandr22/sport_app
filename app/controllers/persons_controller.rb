class PersonsController < ApplicationController
  def profile
  	puts current_user.profile.inspect
  	if current_user.profile.try(:id)
  	  if current_user.profile.is_trainer
        redirect_to personal_trainings_path
  	  else
  	    @trainings = current_user.personal_trainings.where(weekday: Time.now.strftime("%A"))
  	  end
  	else
  	  redirect_to new_profile_path
   	end
  end
end