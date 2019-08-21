class AddCorrectAnswerToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :correct_answer, :string
  end
end
