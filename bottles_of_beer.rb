# frozen_string_literal: true

def bottles_of_beer(num)
  return '  No more bottles of beer on the wall' if num.zero?

  output = <<-VERSE
  #{num} bottle#{'s' if num > 1} of beer on the wall,
  #{num} bottle#{'s' if num > 1} of beer,
  Take one down,
  Pass it around...

  VERSE

  output + bottles_of_beer(num - 1)
end

puts bottles_of_beer(10)
