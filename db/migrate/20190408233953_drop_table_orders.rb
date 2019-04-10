class DropTableOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :orders do |t|
      t.string :name
      t.string :address
      t.string :payment_method

      t.timestamps  null: false
    end
  end
end
