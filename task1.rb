i = ARGV[0].downcase
a = ARGV[1]
b = ARGV[2]

def base_changer( number, from_base, to_base)
	return (number.to_i(from_base.to_i).to_s(to_base.to_i)).force_encoding("UTF-8")
end

puts(base_changer(i,a,b))