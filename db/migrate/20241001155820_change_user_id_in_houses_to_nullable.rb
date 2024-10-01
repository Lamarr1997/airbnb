class ChangeUserIdInHousesToNullable < ActiveRecord::Migration[7.2]
  def change
    change_column_null :houses, :user_id, true
  end
end
