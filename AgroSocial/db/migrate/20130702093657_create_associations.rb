class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
