class GroupMessage < ApplicationRecord
  has_many :group_comments
  belongs_to :group
  belongs_to :creator, class_name: 'User'
end
