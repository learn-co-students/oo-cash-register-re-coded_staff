class CashRegister
    attr_accessor :total, :discount, :items, :last_item_price
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end

    def add_item(item, price, quantity = 1)
        @total += price * quantity 
        quantity.times do
            items << item
        end      
        @last_item_price = price * quantity
    end

    def apply_discount
        if @discount
            descount_amount = @total  * 0.2
            @total = @total - descount_amount
            "After the discount, the total comes to $#{@total.to_i}."  
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_item_price
    end
end
