class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.integer :admin
      t.string :password_digest
      t.string :remember_digest
    	t.string :user_name
      t.string :title


      t.timestamps null: false
    end
    add_index :users, :email, unique: true
    add_index :users, [:id]
  end
end
