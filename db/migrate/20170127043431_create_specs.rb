class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.references :review, index:true, foreign_key: true
      t.string :spec_content
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
