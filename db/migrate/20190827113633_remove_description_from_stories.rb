class RemoveDescriptionFromStories < ActiveRecord::Migration[5.2]
  def change
    remove_column :stories, :description, :text
  end
end
