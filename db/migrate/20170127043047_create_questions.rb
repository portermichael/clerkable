class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_content
      t.references :critic, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
