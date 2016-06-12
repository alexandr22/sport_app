require 'test_helper'

class PersonalTrainingsControllerTest < ActionController::TestCase
  setup do
    @personal_training = personal_trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_training" do
    assert_difference('PersonalTraining.count') do
      post :create, personal_training: {  }
    end

    assert_redirected_to personal_training_path(assigns(:personal_training))
  end

  test "should show personal_training" do
    get :show, id: @personal_training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_training
    assert_response :success
  end

  test "should update personal_training" do
    patch :update, id: @personal_training, personal_training: {  }
    assert_redirected_to personal_training_path(assigns(:personal_training))
  end

  test "should destroy personal_training" do
    assert_difference('PersonalTraining.count', -1) do
      delete :destroy, id: @personal_training
    end

    assert_redirected_to personal_trainings_path
  end
end
