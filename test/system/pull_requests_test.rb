require "application_system_test_case"

class PullRequestsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit pull_requests_url

    assert_selector "h1", text: "Pull requests"
  end
end
