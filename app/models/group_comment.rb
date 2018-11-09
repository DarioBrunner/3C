class GroupComment < ApplicationRecord
  belongs_to :group_message
  belongs_to :user

  belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"
end
