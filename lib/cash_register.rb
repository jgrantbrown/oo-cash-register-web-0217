class CashRegister
  attr_accessor :total, :discount


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items=[]
    @price=[]
  end

  def add_item(title, price, quantity = 1)
      quantity.times { |item|  @items << title }
      @total += price * quantity
      @price<<price*quantity
  end

    def apply_discount
      @total *= (100.0 - @discount)/100
      if discount !=0
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end

    def items
      @items
    end

    def void_last_transaction
      @total-=@price[-1]
    end

end
