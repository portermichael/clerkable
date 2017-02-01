class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :department_name
      t.string :ancestry
      t.string :youtube_id
      t.string :youtube_thumbnail_id
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
    add_index :departments, [:id]
    add_index :departments, [:ancestry]
    add_index :departments, [:id, :ancestry]
  end
end
