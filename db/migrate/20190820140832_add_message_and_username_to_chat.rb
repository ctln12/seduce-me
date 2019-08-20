class AddMessageAndUsernameToChat < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :message, :text
    add_column :chats, :username, :string
  end
end
