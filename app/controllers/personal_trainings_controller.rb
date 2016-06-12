class PersonalTrainingsController < ApplicationController
  before_action :set_personal_training, only: [:show, :edit, :update, :destroy]

  # GET /personal_trainings
  # GET /personal_trainings.json
  def index
    @personal_trainings = PersonalTraining.all
  end

  # GET /personal_trainings/1
  # GET /personal_trainings/1.json
  def show
  end

  # GET /personal_trainings/new
  def new
    @personal_training = PersonalTraining.new
  end

  # GET /personal_trainings/1/edit
  def edit
  end

  # POST /personal_trainings
  # POST /personal_trainings.json
  def create
    @personal_training = PersonalTraining.new(personal_training_params)

    respond_to do |format|
      if @personal_training.save
        format.html { redirect_to @personal_training, notice: 'Personal training was successfully created.' }
        format.json { render :show, status: :created, location: @personal_training }
      else
        format.html { render :new }
        format.json { render json: @personal_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_trainings/1
  # PATCH/PUT /personal_trainings/1.json
  def update
    respond_to do |format|
      if @personal_training.update(personal_training_params)
        format.html { redirect_to @personal_training, notice: 'Personal training was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_training }
      else
        format.html { render :edit }
        format.json { render json: @personal_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_trainings/1
  # DELETE /personal_trainings/1.json
  def destroy
    @personal_training.destroy
    respond_to do |format|
      format.html { redirect_to personal_trainings_url, notice: 'Personal training was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_training
      @personal_training = PersonalTraining.find(params[:id])
    end

    def personal_training_params
      params.require(:personal_training).permit(:name, :description, :weekday, :user_id, exercises_attributes: [:id, :name, :description, :attempt, :quantity])
    end
end
