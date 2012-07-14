class Company < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :name, :slug

  has_one :owner, class_name: "User"
  has_many :users
end
