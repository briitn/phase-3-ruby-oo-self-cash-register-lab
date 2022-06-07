
class CashRegister
    attr_accessor :discount, :total, :price, :title, :quantity
  
  
    def initialize(discount=0)
        @total=0
        @discount=discount
        @title=[]

    end
    def add_item(item, price, quantity=1)
    @price=price
    @quantity=quantity
         @total+=price*quantity
         if quantity > 1
            counter = 0
            while counter < quantity
              @title << item
              counter += 1
            end
          else
            @title << item
          end
        end
    
    
    def apply_discount
        
       @total-=(discount*10)
  
    if discount==0
     "There is no discount to apply."

    else 
        "After the discount, the total comes to $#{total}."
    end
    end

    def items
        
         @title
    
    end

    def void_last_transaction
       @total-=@price
       @quantity-=1
if @quantity==1
   @total=0
end
    end
end
new_register = CashRegister.new
new_register.add_item("apple", 0.99,2)

puts new_register.void_last_transaction
