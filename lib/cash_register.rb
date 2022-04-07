
class CashRegister
    attr_accessor :discount, :total, :items

    def initialize(discount=10)  
       @total = 0
       @discount = discount
       @items = []
    end    
    
    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times{self.items << title}
    end    

    def apply_discount
        if @discount == 10
            "There is no discount to apply." 
        else
            @total -= (@total*@discount/100)
            "After the discount, the total comes to $#{@total}."
        end    
    end    
end   

