class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.string :seducee_or_seducer
      t.references :chat, foreign_key: true

      t.timestamps
    end
  end
end
