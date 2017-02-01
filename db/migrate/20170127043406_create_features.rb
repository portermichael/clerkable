class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.references :review, index:true, foreign_key: true
      t.string :feature_content
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
