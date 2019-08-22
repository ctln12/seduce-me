class RenameBooleanColumnToSeductor < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :boolean, :seducer
  end
end
