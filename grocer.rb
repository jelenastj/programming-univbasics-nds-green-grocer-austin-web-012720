def find_item_by_name_in_collection(name, collection)
  # # Implement me first!
  # #
  # # Consult README for inputs and outputs

  index = 0 
  while index<collection.length do 
    thing = collection[index]
    if name == thing[:item]
      return thing
    end
    index+=1 
  end
end
 
# * Arguments:
#   * `String`: name of the item to find
#   * `Array`: a collection of items to search through
# * Returns:
#   * `nil` if no match is found
#   * the matching `Hash` if a match is found between the desired name and a given 
#     `Hash`'s :item key






def consolidate_cart(cart)
  
  grocery_list =[]
  index = 0 
  
  while index<cart.length do
    
    item_name = cart[index][:item]
    item_price = cart[index][:price]
    item_clearance = cart[index][:clearance]
    
    if grocery_list.length == 0 
      grocery_list = [{:item => item_name, :price => item_price, :clearance => item_clearance, :count => 1}]
      
    elsif find_item_by_name_in_collection(item_name, grocery_list)
      
      grocery_index = 0
      while grocery_index < grocery_list.length do 
      if grocery_list[grocery_index][:item] == item_name
      grocery_list[grocery_index][:count] +=1 
    end
    
    grocery_index += 1 
  end

   else
      grocery_list << {:item => item_name, :price => item_price, :clearance => item_clearance, :count => 1}
end
 
  index += 1 
end
 grocery_list
end



# Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
# * Arguments:
#   * `Array`: a collection of item Hashes
# * Returns:
#   * a ***new*** `Array` where every ***unique*** item in the original is present
#     * Every item in this new `Array` should have a `:count` attribute
#     * Every item's `:count` will be _at least_ one
#     * Where multiple instances of a given item are seen, the instance in the
#       new `Array` will have its `:count` increased
# {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2},
#   {:item => "KALE", :price => 3.00, :clearance => false, :count => 1}



def apply_coupons(cart, coupons)
  

end
 
 




def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
