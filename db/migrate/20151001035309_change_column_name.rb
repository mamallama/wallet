class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :money, :balance, :activity
  end
end
