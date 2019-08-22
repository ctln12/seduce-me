class ChangeUserResponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :user_responses, :string
    add_column :games, :score, :integer
  end
end
