class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :user, index:true, foreign_key: true
      t.integer :status
      t.string :address_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end

