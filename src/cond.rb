i = gets.to_i

if i%2==0
    puts "even"
else
    puts "odd"
end


if i%3==0
    puts "zero"
elsif i%3==1
    puts "one"
else
    puts "two"
end

#変なif文の書き方
puts "even" if i%2==0
puts "odd" unless i%2==0

#パターンマッチングについてElixirみたい
case i%5
when 4
    puts "four"
when 3
    puts "three"
else 
    puts "other"
end
