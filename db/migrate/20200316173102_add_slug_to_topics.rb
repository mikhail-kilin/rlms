class AddSlugToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :topic_slug, :string
    add_index :topics, :topic_slug, unique: true
  end
end
