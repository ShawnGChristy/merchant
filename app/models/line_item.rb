class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  #TODO: before save, reduce product inventory quantity
  #TODO: before delete/ destroy, add back to the product inventory quantity 
  belongs_to :order

def total
  price * quantity
end

end
