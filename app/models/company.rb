# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  companyname :string
#  adress      :text
#  passwort    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Company < ApplicationRecord

  has_many :user_to_companies
  has_many :users, :through => :user_to_companies
end
