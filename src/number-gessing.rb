#step1
#1~10までで乱数生成して、変数に束縛
rnum = rand(1..10)

#変数``rnum''の値を出力
#puts rnum

#step2
unum = gets.to_i

#if unum == rnum
#    puts "正解"
#else
#    puts "間違い"
#end


#step3
#if unum > rnum
#    puts "大きい"
#else
#    puts "小さい"
#end

unum = rand(1..0)
if unum != rnum 
    unum = gets.to_i
    if unum == rnum
        puts "正解"
    elsif unum > rnum
        puts "大きい"
    else
        puts "小さい"
    end
end