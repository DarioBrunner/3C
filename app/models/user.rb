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
  # has_many :user_to_channels
  # has_many :channels, :through => :user_to_channels

  def channels
    channelArray=[]
    groups.each do |group|
      channelArray<<group.channels
    end
    channelArray.flatten.uniq
  end



end
