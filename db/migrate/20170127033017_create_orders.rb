class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index:true, foreign_key: true
      t.integer :status
      t.datetime :order_date
      t.datetime :prepare_date
      t.datetime :ship_date
      t.datetime :receive_date
      t.string :address_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :pretotal
      t.integer :tax
      t.integer :total


      t.timestamps null: false
    end
  end
end
