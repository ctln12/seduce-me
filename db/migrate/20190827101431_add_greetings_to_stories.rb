class AddGreetingsToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :greetings, :string
  end
end
