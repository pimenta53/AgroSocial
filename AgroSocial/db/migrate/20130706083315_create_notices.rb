class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.date :date_time
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
