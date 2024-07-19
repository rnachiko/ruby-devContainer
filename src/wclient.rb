#! /usr/bin/env ruby

require 'socket'

host = ARGV[0]
path = ARGV[1]

TCPSocket.open(host, 80) do |s|
    #HEAD命令はLast-Modifiedのパラメータをみて、コンテンツが更新されたかどうかを確認するために用いる。
    s.puts "GET /#{path}/ HTTP/1.1\r\n"
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