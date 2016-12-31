class CreateGlances < ActiveRecord::Migration
  def change
    create_table :glances do |t|
    	t.string :glance_name
        t.references :department, index: true, foreign_key: true
    	t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
