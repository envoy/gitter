class PullRequest < ApplicationRecord
  has_many :label_events, order: 'created_at ASC'
end
