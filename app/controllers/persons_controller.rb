class PersonsController < ApplicationController
  def profile
  	@trainings = current_user.personal_trainings
  end
end
