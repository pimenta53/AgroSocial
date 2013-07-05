class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.String :name
      t.date :start_data
      t.date :end_date
      t.text :description
      t.string :local
      t.string :image

      t.timestamps
    end
  end
end
