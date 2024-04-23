def max a, b
  if a>b
    return a
  else
    return b
  end
end

#returnはそのメソッドを終わらせろという命令だよ
#値を返す命令ではないよ

def min a, b
  result = a
  if b<a
    result = b
  end
  result 
end

puts max 1, 10
puts max 20, 10
puts min 1, 10
puts min 20, 10
puts max "a", "b"
puts min "a", "b"


