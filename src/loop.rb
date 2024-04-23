##基本的なloop
i = 0
while i < 10
    print "#"
    i+= 1
end
puts 


a=[1, 3, 10, 7]
b=[1, 1.5, 3]
c=[1, "ksu", 3, 8.5]
d=[a, b, c]
e=[1, "1", 1+1]

pp i
pp a
pp b
pp c
pp d
pp e


i=0
while i<a.length
    print a[i].to_s + ","
    i+=1
end
puts


#javaでいう拡張for文
a.each do |x|
  print x.to_s + ":"
end
puts


a.each_with_index do |x, idx|
    print x.to_s + ":" + idx.to_s + ","
end
puts


#5回繰り返す
5.times do |i|
    print i.to_s + ","
end
puts


