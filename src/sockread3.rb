require 'socket'

TCPSocket.open("www.is.kyusan-u.ac.jp", 80) do |s|
    #HEAD命令はLast-Modifiedのパラメータをみて、コンテンツが更新されたかどうかを確認するために用いる。
    s.puts "GET /~toshi/ HTTP/1.0\r\n"
    s.puts "\r\n"
    
    while line = s.gets
        puts line
    end
end