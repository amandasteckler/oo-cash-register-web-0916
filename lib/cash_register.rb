class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @item = item
    @price = price
    @quantity = quantity

    if @quantity == 1
      @items << @item
    else
      @quantity.times do |num|
        @items << @item
      end
    end

    @total += (@price * @quantity)
  end

  def apply_discount
    @total = @total - (@discount*10)
    if @discount > 0
      message = "After the discount, the total comes to $#{@total}."
    else
      message = "There is no discount to apply."
    end
    message
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @price
  end

end
