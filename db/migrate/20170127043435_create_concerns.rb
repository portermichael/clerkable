class CreateConcerns < ActiveRecord::Migration
  def change
    create_table :concerns do |t|
      t.references :review, index:true, foreign_key: true
      t.string :concern_content
      t.references :user, index:true, foreign_key: true


      t.timestamps null: false
    end
  end
end
