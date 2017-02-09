class CreateGlanceNames < ActiveRecord::Migration
  def change
    create_table :glance_names do |t|
      t.references :critic, index:true, foreign_key: true
      t.references :user, index:true, foreign_key: true
      t.string :glance_name

      t.timestamps null: false
    end
  end
end
