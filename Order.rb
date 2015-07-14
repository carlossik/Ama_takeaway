@@ -0,0 +1,79 @@
require 'observer'


class Ama
  include Observable
  attr_accessor :menu_item ,:portions ,:amount
  attr_reader :order

  def initialize(*menu_item,portions,email_address,name)
    @menu_item = menu_item
    @portions = portions
    @amount = amount
    @side_orders = {}
    @address =  email_address
    @name = name
    @order = order



    @menu = {:jollof => 10.00 ,:banku => 2.00 ,:Tilapia => 11.00 , :Fried_fish => 6.00 , :okro_stew => 4.00}
    @menu = menu_item

  end

def total_amount
  (@portions * @amount) +   @side_orders

end

def menu_item
  return @menu_item
end
  def checkout(order)
       (@order + @side_orders )
    print self

  end
  def order_number
    puts "Your order Number is "  + rand(100..999).to_s
  end
  def add_observer(*)


  end

  def notify_order_manager
notify_observers(order_manager)

  end

def order?
  if
  @menu_item
     @name
  @address
    @portions
    puts "ORDER FOR   #{@name}  , You Ordered #{@portions}  of #{@menu_item}"
    self.order_number
    notify_order_manager
  else
    puts "Your order is not complete , please review and re-order"
  end




end
end





my_order = Ama.new('banku',2,'carlossik@gmail.com','Carlos Attafuah')
my_order.order?



