class ChangeUserIdInHotelsToNullable < ActiveRecord::Migration[7.2]
  def change
    change_column_null :hotels, :user_id, true
  end
end
