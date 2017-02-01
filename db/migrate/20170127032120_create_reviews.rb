class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :product, index:true, foreign_key: true
      t.references :critic, index:true, foreign_key: true
      t.references :user, index:true, foreign_key: true
      t.string :youtube_id


      t.timestamps null: false
    end
  end
end
