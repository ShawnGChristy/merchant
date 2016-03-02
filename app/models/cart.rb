class Cart < ActiveRecord::Base
    has_many :line_items, dependent: :destroy
    def subtotal
        #SQL version faster
        line_items.select("SUM(quantity * price) AS sum")[0].sum
        
        # Ruby version  slower
        # line_items.to_a.sum{ |item| item.total }
    end
end
