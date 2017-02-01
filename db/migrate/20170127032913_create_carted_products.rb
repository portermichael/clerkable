class CreateCartedProducts < ActiveRecord::Migration
  def change
    create_table :carted_products do |t|
    	t.references :cart, index:true, foreign_key: true
    	t.references :product, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
