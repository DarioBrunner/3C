# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  company_id             :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable, :timeoutable, :lockable, :recoverable, :rememberable

  belongs_to :company
  has_many :user_to_groups
  has_many :groups, :through => :user_to_groups


  has_one_attached :avatar

  has_many :group_comments
  has_many :group_user_messages
  has_many :group_messages, :through => :group_user_messages

  def channels
    channelArray=[]
    groups.each do |group|
      channelArray<<group.channels
    end
    channelArray.flatten.uniq
  end

end
