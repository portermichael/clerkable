class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.references :department, index: true, foreign_key: true
      t.string :youtube_id
      t.string :youtube_thumbnail_id
      t.decimal :msrp
      t.decimal :expected
      t.string :first_seller
      t.decimal :first_price
      t.string :first_link
      t.string :second_seller
      t.decimal :second_price
      t.string :second_link
      t.string :third_seller
      t.decimal :third_price
      t.string :third_link
      t.integer :user_id
      t.string :fourth_seller
      t.decimal :fourth_price
      t.string :fourth_link
      t.string :fifth_seller
      t.decimal :fifth_price
      t.string :fifth_link
      t.string :first_glance
      t.string :second_glance
      t.string :third_glance
      t.string :fourth_glance
      t.string :fifth_glance
      t.string :first_feature
      t.string :second_feature
      t.string :third_feature
      t.string :fourth_feature
      t.string :fifth_feature
      t.string :first_spec
      t.string :second_spec
      t.string :third_spec
      t.string :fourth_spec
      t.string :fifth_spec
      t.string :benefits

      t.timestamps null: false
    end
  end
end
