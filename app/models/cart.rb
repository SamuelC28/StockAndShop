class Cart < ApplicationRecord
    # has_many :line_items, dependent: :destroy
    # has_many :items # through: :line_items##

    # belongs_to :user

#     def add_item(item)
#       # item = items.where('item_id = ?', item_id).first
#       # if item
#       #   # increase the quantity of product in cart
#       #   item.quantity=item.quantity + 1
#       #   save
#       # else
#       # #    # product does not exist in cart
#       #   item = Item.find(item_id)
#       puts item.inspect
#         self.items <<  item
#     end
# #       save
# # end


end
