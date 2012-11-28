require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do	
    get :index
    assert_response :success
    assert_response '#columns #side a', :minimum => 4
    assert_response '#main .entry', 3
    assert_response 'h3','Programing Ruby 1.9'
    assert_response '.price', /\$[,\d]+\.\d\d/
  end

end
