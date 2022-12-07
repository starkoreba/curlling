require "test_helper"

class Search::ActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_activities_index_url
    assert_response :success
  end
end
