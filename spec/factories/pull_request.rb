FactoryBot.define do
  factory :pull_request do
    github_id { PullRequest.count }
    status 'open'
    name 'Awesome PR'
  end
end
