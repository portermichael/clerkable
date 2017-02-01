class CreateGlances < ActiveRecord::Migration
  def change
    create_table :glances do |t|
      t.references :review, index:true, foreign_key: true
      t.string :glance_content
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
