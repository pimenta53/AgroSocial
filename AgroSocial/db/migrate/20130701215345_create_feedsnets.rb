class CreateFeedsnets < ActiveRecord::Migration
  def change
    create_table :feedsnets do |t|
      t.string :url

      t.timestamps
    end
  end
end
