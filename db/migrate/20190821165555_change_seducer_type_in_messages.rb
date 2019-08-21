class ChangeSeducerTypeInMessages < ActiveRecord::Migration[5.2]
  def change
    change_column :messages, :seducer, 'boolean USING CAST(seducer AS boolean)'
  end
end
