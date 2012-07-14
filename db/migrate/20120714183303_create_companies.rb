class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slug
      t.integer :owner_id

      t.timestamps
    end

    add_index :companies, :slug, unique: true
  end
end
