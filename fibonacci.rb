# frozen_string_literal: true

def fibonacci(num)
  return num if (0..1).include?(num)

  fibonacci(num - 2) + fibonacci(num - 1)
end

puts((0..10).map { |num| fibonacci(num) }.join(', '))

# https://www.theodinproject.com/lessons/ruby-recursion
def fibs(length)
  return [] unless length.positive?

  (1..length).each_with_object([0, 1]) do |_, arr|
    arr << arr[-1] + arr[-2]
  end.first(length)
end

p fibs(1)
p fibs(2)
p fibs(8)

def fibs_rec(length)
  return [] unless length.positive?

  return [0, 1].first(length) if length <= 2

  fibs_rec(length - 1).tap { |arr| arr << arr[-2] + arr[-1] }
end

p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(8)
