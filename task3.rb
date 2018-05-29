time = ARGV[0].to_i + ARGV[1].to_i

h   = time/3600
puts h
m   = (time - h * 3600) / 60
puts m
s   = time - h * 3600 - m * 60
puts s 

h_w = ("#{h} часов "  if ((5..20).include?(h % 100)) or (5..9).include?(h %10) or h % 100 == 0 ) || ("#{h} часа " if (2..4).include?(h %10))    || "#{h} час "
m_w = ("#{m} минут "  if ((5..20).include?(m % 100)) or m%10 == 0 )  || ("#{m} минуты " if (2..4).include?(m %10))  || "#{m} минута "
s_w = ("#{s} секунд" if ((5..20).include?(s % 100)) or s%10 == 0 )  || ("#{s} секунды" if (2..4).include?(s %10)) || "#{s} секунда"


if h>=0
	print h_w
end

if m >=0
	print m_w
end

if s >=0
	print s_w
end

