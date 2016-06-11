class PersonsController < ApplicationController
  def profile
  	puts current_user.profile.inspect
  	if current_user.profile.try(:id)
  	  @trainings = current_user.personal_trainings
  	else
  	  redirect_to new_profile_path
   	end
  end
end