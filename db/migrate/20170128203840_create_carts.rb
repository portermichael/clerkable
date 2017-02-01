class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index:true, foreign_key: true
      t.integer :count
      t.integer :status

      t.timestamps null: false
    end
  end
end
