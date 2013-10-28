#!/usr/bin/ruby -w
=begin

    http://en.wikipedia.org/wiki/Factory_pattern

    The factory method pattern relies on inheritance, as object creation is delegated to subclasses that
    implement the factory method to create objects.

    Note: since ruby does not have the concept of Abstract classes, need to generate a base class implementation approach
    so, just override methods as needed

    # using inheritance instead of modules not necessarily a good thing in ruby
    # http://ducktypo.blogspot.com/2010/08/why-inheritance-sucks.html
=end


module GenericPizza
  def prepare
    puts "Preparing Pizza\n"
  end

  def bake
    puts "Putting Pizza in the oven\n"
  end

  def cut
    puts "Slicing up the Pizza\n"
  end

  def box
    puts "Putting Pizza in the box.\n\n"
  end

end

class PizzaFactory
  def orderPizza(pizza)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
  end
end


class NewYorkStyle
  include GenericPizza
  def prepare
    puts "Preparing New York Pizza!\n"
  end
end

class ChicagoStyle
  include GenericPizza
  def cut
    puts "Cutting the Pizza into Square slices, CHICAGO STYLE!\n"
  end
end