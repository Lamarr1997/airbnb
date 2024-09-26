class CreateHouses < ActiveRecord::Migration[7.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
