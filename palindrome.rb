# frozen_string_literal: true

def palindrome?(str)
  return true if str.length <= 1

  str[0].downcase == str[-1].downcase && palindrome?(str[1..-2])
end

[
  'Able was I ere I saw Elba',
  'This is not a palindrome',
  'Racecar',
  'Abba abba abba',
  'Stop pots',
  'Pull up if I pull up'
].each { |str| puts "#{palindrome?(str)}: #{str}" }
