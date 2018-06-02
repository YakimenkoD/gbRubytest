i = ARGV[0].downcase
a = ARGV[1]
b = ARGV[2]

puts (i.to_i(a.to_i).to_s(b.to_i)).force_encoding("UTF-8")