class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :subdomain
      t.integer :owner_id

      t.timestamps
    end
  end
end
