class ProfilesController < InheritedResources::Base
 
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      redirect_to root_path
    else
      redirect_to new_profile_path
    end
  end

  private

    def profile_params
      params.require(:profile).permit(:allow_create_training, :name, :age, :user_id, :is_trainer, :weight, :height, :stage)
    end
end

