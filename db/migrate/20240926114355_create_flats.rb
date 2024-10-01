class CreateFlats < ActiveRecord::Migration[7.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.string :description
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
