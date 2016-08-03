class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :department_name
      t.string :ancestry
      t.string :youtube_id
      t.string :youtube_thumbnail_id

      t.timestamps null: false
    end
  end
end
