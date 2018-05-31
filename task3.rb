def format_time(number, forms)
  return if number == 0
  postfix =
    case number
    when 1    then forms[0]
    when 2..4 then forms[1]
    else           forms[2]
    end
  "#{number} #{postfix}"
end

s = ARGV.map(&:to_i).reduce(:+)
return '0 секунд' if s == 0

hours = s / 3600
minutes = s / 60 - hours * 60
seconds = s % 60

puts [
  format_time(hours, %w(час часа часов)),
  format_time(minutes, %w(минута минуты минут)),
  format_time(seconds, %w(секунда секунды секунд))
].compact.join(' ')