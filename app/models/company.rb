class Company < ActiveRecord::Base
  attr_accessible :name, :owner_id, :subdomain

  has_one :owner, class_name: "User"
  has_many :users
end
