class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.references :department, index: true, foreign_key: true
      t.references :user, index:true, foreign_key: true
      t.string :youtube_thumbnail_id
      t.decimal :msrp
      t.decimal :expected

      t.timestamps null: false
    end
    add_index :products, :id
    add_index :products, [:id, :department_id]
  end
end
