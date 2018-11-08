class GroupComment < ApplicationRecord
  belongs_to :group_message
  belongs_to :user
end
