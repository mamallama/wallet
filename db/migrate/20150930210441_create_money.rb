class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.decimal :balance
      t.decimal :deposits
      t.decimal :withdrawals

      t.timestamps null: false
    end
  end
end
