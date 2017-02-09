class CreateRelationships < ActiveRecord::Migration
  def change

    #Both department_id and follower_id are department_ids.
    #Department_id is the one that gets followed, follower_id is the one that follows.
    create_table :relationships do |t|
      t.integer :department_id
      t.integer :follower_id
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
    add_index :relationships, :department_id
    add_index :relationships, :follower_id
    add_index :relationships, [:department_id, :follower_id], unique: true
  end
end
