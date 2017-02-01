class CreateSpecNames < ActiveRecord::Migration
  def change
    create_table :spec_names do |t|
      t.string :spec_name
      t.references :critic, index:true, foreign_key: true
      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
