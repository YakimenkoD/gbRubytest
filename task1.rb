n = ARGV[0]
from = ARGV[1]
to = ARGV[2]
result = n.to_i(from.to_i).to_s(to.to_i)

puts result