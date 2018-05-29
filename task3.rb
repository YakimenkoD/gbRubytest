time = ARGV[0].to_i + ARGV[1].to_i

h   = time/3600
m   = (time - h * 3600) / 60
s   = time - h * 3600 - m * 60

h_w = ("#{h} часов "  if ((5..20).include?(h % 100)) or (5..9).include?(h %10) or h % 100 == 0 ) || ("#{h} часа " if (2..4).include?(h %10))    || "#{h} час "
m_w = ("#{m} минут "  if ((5..20).include?(m % 100)) or m%10 == 0 )  || ("#{m} минуты " if (2..4).include?(m %10))  || "#{m} минута "
s_w = ("#{s} секунд" if ((5..20).include?(s % 100)) or s%10 == 0 )  || ("#{s} секунды" if (2..4).include?(s %10)) || "#{s} секунда"

result = ""
result = case                          #когда нибудь, я научусь в DRY
			when h>0 then result+=h_w
			else ""	
		end
		case 
			when m>0 then result+=m_w
			else ""
		end
		case 
			when s=>0 then result+=s_w
		end

puts result

	
