class User < ActiveRecord::Base
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :owned_company_attributes

  belongs_to :company
  has_one :owned_company, class_name: "Company", foreign_key: "owner_id"

  accepts_nested_attributes_for :owned_company

  after_create :set_company

  def set_company
    update_column :company_id, owned_company.id
  end
end
