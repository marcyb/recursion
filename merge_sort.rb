# frozen_string_literal: true

# https://www.theodinproject.com/lessons/ruby-recursion
def merge_sort(arr)
  return arr if arr.length <= 1

  midpoint = arr.length / 2
  left = merge_sort(arr[0...midpoint])
  right = merge_sort(arr[midpoint..])

  result = []
  result << (left.first <= right.first ? left.shift : right.shift) until left.empty? || right.empty?

  result + left + right
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])
