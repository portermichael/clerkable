class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :department_id
      t.string :youtube_id
      t.string :youtube_thumbnail_id
      t.string :benefits

      t.timestamps null: false
    end
  end
end
