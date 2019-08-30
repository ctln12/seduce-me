class ChangeRankingDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :ranking, :float, :default => 0
  end
end
