# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ApplicationRecord
 has_many :channel_to_groups, :dependent => :nullify
 has_many :channels, :through => :channel_to_groups
 has_many :user_to_groups, :dependent =>:nullify
 has_many :users, :through => :user_to_groups

 has_many :group_messages, :dependent =>:nullify
 has_many :group_user_messages

 has_one_attached :image, :dependent => :nullify

end
