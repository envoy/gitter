class LabelEvent < ApplicationRecord
  belongs_to :pull_request

  # event can be one of:
  # add
  # remove

end
