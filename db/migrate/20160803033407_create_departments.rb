class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :department_name
      t.string :ancestry
      t.string :youtube_id
      t.string :youtube_thumbnail_id
      t.string :first_glance_name
      t.string :second_glance_name
      t.string :third_glance_name
      t.string :fourth_glance_name
      t.string :fifth_glance_name
      t.string :first_feature_name
      t.string :second_feature_name
      t.string :third_feature_name
      t.string :fourth_feature_name
      t.string :fifth_feature_name
      t.string :first_spec_name
      t.string :second_spec_name
      t.string :third_spec_name
      t.string :fourth_spec_name
      t.string :fifth_spec_name

      t.timestamps null: false
    end
  end
end
