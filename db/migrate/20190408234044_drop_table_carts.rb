class DropTableCarts < ActiveRecord::Migration[5.2]
  def change
    drop_table :carts do |t|

      t.timestamps  null: false
    end
  end
end
