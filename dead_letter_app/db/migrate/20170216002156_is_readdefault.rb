class IsReaddefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :letters, :is_read, from:true, to: false
  end
end
