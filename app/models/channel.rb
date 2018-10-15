class Channel < ApplicationRecord
  enum typ: {facebook:0, whatsapp:1, email:2, twitter:3, instagram:4, slage:5, kws:6}
  enum status: {both: 0, chat: 1, blog: 2}
  has_many :channel_to_groups
  has_many :groups, :through => :channel_to_groups
  has_many :user_to_channels
  has_many :users, :through => :user_to_channels
end
