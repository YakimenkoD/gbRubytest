require 'date'

MONTHS = {
  'января'   => 1,
  'февраля'  => 2,
  'марта'    => 3,
  'апреля'   => 4,
  'мая'      => 5,
  'июня'     => 6,
  'июля'     => 7,
  'августа'  => 8,
  'сентября' => 9,
  'октября'  => 10,
  'ноября'   => 11,
  'декабря'  => 12
}.freeze

day = ARGV[0]
month = ARGV[1]
year = ARGV[2]

puts day
puts month

puts year
days_in_year = 365 + (Date.gregorian_leap?(year.to_i) ? 1 : 0)
date = Date.new(
  year.to_i,
  MONTHS[month],
  day.to_i)
puts (days_in_year - date.yday)
