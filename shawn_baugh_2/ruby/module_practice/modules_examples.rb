# Class
Class.superclass # => Module
# Enumerable
Array.ancestors  # => [Array, Enumerable, Object, Kernel, BasicObject]
Hash.ancestors   # => [Hash, Enumerable, Object, Kernel, BasicObject]
Fixnum.ancestors # => [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]
# ***********USEFUL METHODS*****************
    # .any? { |obj| block } => true or false
    puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true

    # .collect { |obj| block } => returns a new array with the results of running block once for every element in enum
    puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
    puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]

    # .detect/.find => returns the first for which block is not false.
    puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
    (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35

    # .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
    puts (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

    # .reject { |obj| block } => opposite of find_all
    puts (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

# *********EXAMPLE***************
module Printer
  def print_each_element
    for i in 0...self.length
      puts self[i]
    end
  end
end
