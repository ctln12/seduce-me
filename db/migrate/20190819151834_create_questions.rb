class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :seducee_introduction
      t.text :seducee_phrase
      t.text :seducer_introduction
      t.text :seducer_answer_A
      t.text :seducer_answer_B
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
