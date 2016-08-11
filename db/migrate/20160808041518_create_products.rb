class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :department_id
      t.string :youtube_id
      t.string :youtube_thumbnail_id
      t.decimal :msrp, :precision => 6, :scale => 2
      t.decimal :expected, :precision => 6, :scale => 2
      t.decimal :amazon_price, :precision => 6, :scale => 2
      t.string :amazon_link
      t.decimal :walmart_price, :precision => 6, :scale => 2
      t.string :walmart_link
      t.string :benefits

      t.timestamps null: false
    end
  end
end
