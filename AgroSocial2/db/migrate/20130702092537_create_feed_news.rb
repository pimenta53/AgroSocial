class CreateFeedNews < ActiveRecord::Migration
  def change
    create_table :feed_news do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
