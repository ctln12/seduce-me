class ChangeSeducerOrSeduceeColumnNameAndType < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :seducee_or_seducer, :boolean
  end
end
