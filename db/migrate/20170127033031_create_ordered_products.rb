class CreateOrderedProducts < ActiveRecord::Migration
  def change
    create_table :ordered_products do |t|
      t.references :order, index:true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :price

      t.timestamps null: false
    end
  end
end
