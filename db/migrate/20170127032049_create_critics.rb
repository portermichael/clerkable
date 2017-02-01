class CreateCritics < ActiveRecord::Migration
  def change
    create_table :critics do |t|
      t.references :department, index: true, foreign_key: true
      t.references :user, index:true, foreign_key: true
      t.string :youtube_id
      t.timestamps null: false
    end
  end
end
