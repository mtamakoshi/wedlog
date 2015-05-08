require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

<<<<<<< HEAD
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

=======
>>>>>>> d476c12e1d015ea1950c78ee5020a4898e248435
end
