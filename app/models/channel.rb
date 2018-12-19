class Channel < ApplicationRecord
  enum usage: {facebook:0, whatsapp:1, email:2, twitter:3, instagram:4, slack:5, kws:6}
  enum status: {both: 0, chat: 1, blog: 2}
  has_many :channel_to_groups, :dependent => :nullify
  has_many :groups, :through => :channel_to_groups
  has_many :user_to_channels, :dependent => :nullify
  has_many :users, :through => :user_to_channels
  has_one_attached :icon
end
