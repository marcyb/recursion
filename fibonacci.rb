# frozen_string_literal: true

def fibonacci(num)
  return num if (0..1).include?(num)

  fibonacci(num - 2) + fibonacci(num - 1)
end

puts((0..10).map { |num| fibonacci(num) }.join(', '))
