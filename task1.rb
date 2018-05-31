i = ARGV[0].to_s.split('')
a = ARGV[1].to_i
b = ARGV[2].to_i

 base = {'0'=> 0 ,'1'=> 1 ,'2'=> 2 ,'3'=> 3 ,'4'=> 4 ,'5'=> 5,'6'=> 6,'7'=> 7,'8'=> 8,'9'=> 9,
        'A'=> 10,'B'=> 11,'C'=> 12,'D'=> 13,'E'=> 14,'F'=>15,'G'=>16,'H'=>17,'I'=>18,'J'=>19,
        'K'=>20,'L'=>21,'M'=>22,'N'=>23,'O'=>24,'P'=>25,'Q'=>26,'R'=>27,'S'=>28,'T'=>29,
        'U'=>30,'V'=>31,'W'=>32,'X'=>33,'Y'=>34,'Z'=>35}

 result, e, k='', 0, true

for r in 0..(i.length-1)
    e+=base[i[r]].to_i*a**(i.length-1-r)
end

while k do
result.insert(0,base.key(e%b))
e/= b
k=false if (e<b) 
	result.insert(0,base.key(e))  if e!=0
end
puts result