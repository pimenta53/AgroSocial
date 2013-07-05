class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :startDate
      t.date :endDate
      t.text :description
      t.string :local
      t.string :image

      t.references :association

      t.timestamps
    end
  end
end
