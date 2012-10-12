class Circle

  @@PI = 3.1416

  def initialize(p)
   raise ScriptError, "You must put the numer of perimeter(>= 0.0) of circle and you have put '#{p}', class:'#{p.class}'" unless p.is_a?(Numeric) && p >= 0

    @perimeter = p
  end

  def radius
    @perimeter / (2*@@PI)
  end

end

system("clear")
puts "Put the perimeter of the circle:  "
STDOUT.flush
p = gets.chomp.to_f
c = Circle.new(p)
puts
puts "The radius is: ", c.radius

