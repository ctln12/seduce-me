class RemoveWinFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :win, :boolean
  end
end
