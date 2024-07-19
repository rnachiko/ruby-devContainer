f = File.open "output.txt", "r"

lineno = 0
while line = f.gets    #f.gets&.chomp <- ボッチ演算子 nilの時にはchompの処理しない
    line = line.chomp
    #line.chomp! <- 破壊的メソッド
    lineno+=1
    puts lineno.to_s + " : " + line + "?"
end

f.close