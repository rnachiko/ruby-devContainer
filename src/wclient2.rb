#! /usr/bin/env ruby
#
# ruby wclient2.rb http://www.is.kyusan-u.ac.jp/~toshi/
#
# scheme://host/path
require 'socket'

url = ARGV[0]
scheme, dummy, host, *path = url.split("/")

TCPSocket.open(host, 80) do |s|
    #HEAD命令はLast-Modifiedのパラメータをみて、コンテンツが更新されたかどうかを確認するために用いる。
    s.puts "GET /#{path.join("/")}/ HTTP/1.1\r\n"
    s.puts "HOST:#{host}\r\n"
    s.puts "\r\n"
    
    while line = s.gets
        if line == "\r\n"
            while body = s.gets
                puts body
            end 
        end
    end
end

