class DropTableLineItems < ActiveRecord::Migration[5.2]
  def change
    drop_table :line_items do |t|
      t.integer :quantity
      t.integer :order_id
      t.integer :item_id
      t.integer :cart_id

      t.timestamps  null: false
    end
  end
end
