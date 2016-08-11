class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :department_id
      t.string :youtube_id
      t.string :youtube_thumbnail_id
      t.decimal :msrp
      t.decimal :expected
      t.decimal :amazon_price
      t.string :amazon_link
      t.decimal :walmart_price
      t.string :walmart_link
      t.string :benefits

      t.timestamps null: false
    end
  end
end
