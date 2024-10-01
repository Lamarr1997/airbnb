class ChangeUserIdInFlats < ActiveRecord::Migration[7.2]
  def change
    change_column_null :flats, :user_id, true
  end
end
