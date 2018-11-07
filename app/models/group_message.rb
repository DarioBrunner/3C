class GroupMessage < ApplicationRecord
  has_many :group_comments
  belongs_to :group
end
