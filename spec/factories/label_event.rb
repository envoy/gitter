FactoryBot.define do
  factory :label_event do
    association :pull_request
    event 'add'
    label_name 'waiting_for_review'
  end
end
