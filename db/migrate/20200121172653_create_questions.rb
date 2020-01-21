class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_content
      t.integer :user_id
      t.timestamp
    end
    create_table :answers do |t|
      t.string :answer
      t.integer :user_id
      t.integer :rating
      t.integer:question_id
      t.timestamp
    end
  end
end
