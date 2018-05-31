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

time = ARGV.map(&:to_i).reduce(:+)
return '0 секунд' if time == 0

hours   = time / 3600
minutes = time / 60 - hours * 60
seconds = time % 60

puts [
  format_time(hours, %w(час часа часов)),
  format_time(minutes, %w(минута минуты минут)),
  format_time(seconds, %w(секунда секунды секунд))
].compact.join(' ')