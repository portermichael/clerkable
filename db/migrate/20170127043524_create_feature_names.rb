class CreateFeatureNames < ActiveRecord::Migration
  def change
    create_table :feature_names do |t|
      t.references :critic, index:true, foreign_key: true
      t.string :feature_name
      t.integer :feature_name_type
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
