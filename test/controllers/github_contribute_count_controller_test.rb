require 'test_helper'

class GithubContributeCountControllerTest < ActionDispatch::IntegrationTest
  test "should get create_tweet_text" do
    get github_contribute_count_create_tweet_text_url
    assert_response :success
  end

end
