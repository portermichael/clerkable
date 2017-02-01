class CreateGlanceNames < ActiveRecord::Migration
  def change
    create_table :glance_names do |t|
      t.string :glance_name
      t.references :critic, index:true, foreign_key: true
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
