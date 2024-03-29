class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.date :date
      t.text :content
      t.string :author

      t.references :event

      t.timestamps
    end
  end
end
