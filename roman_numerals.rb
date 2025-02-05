# frozen_string_literal: true

ARABIC_TO_ROMAN = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}.freeze

ROMAN_TO_ARABIC = ARABIC_TO_ROMAN.invert.freeze

def arabic_to_roman(arabic, roman = '')
  return roman if arabic.zero?

  ARABIC_TO_ROMAN.each_key do |key|
    quotient, modulus = arabic.divmod(key)
    roman += ARABIC_TO_ROMAN[key] * quotient
    return arabic_to_roman(modulus, roman) if quotient.positive?
  end
end

puts arabic_to_roman(2688)
puts arabic_to_roman(499)

def roman_to_arabic(roman, arabic = 0)
  return arabic if roman.empty?

  ROMAN_TO_ARABIC.each_key do |key|
    next unless roman.start_with?(key)

    arabic += ROMAN_TO_ARABIC[key]
    roman = roman.slice(key.length, roman.length)
    return roman_to_arabic(roman, arabic)
  end
end

puts roman_to_arabic('MCMLXXXIX')
