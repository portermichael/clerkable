class CreateConcernNames < ActiveRecord::Migration
  def change
    create_table :concern_names do |t|
      t.string :concern_name
      t.references :critic, index:true, foreign_key: true
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
