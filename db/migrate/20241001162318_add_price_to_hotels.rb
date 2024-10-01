class AddPriceToHotels < ActiveRecord::Migration[7.2]
  def change
    add_column :hotels, :price, :integer
  end
end
