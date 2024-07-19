#! /usr/bin/env ruby

require 'socket'

gs = TCPServer.open(5000)

while true
    s1 = gs.accept
    Thread.new(s1) do |s|
        cmd, path, http, *dummy = s.gets.chomp.split(" ")
        while line = s.gets
            line.chomp!
            break if line == ""
        end

        s.puts "HTTP/1.1 200 OK"
        s.puts
        if path == "/now" 
            s.puts Time.now
        elsif path == "/name"
            s.puts "machiko"
        else
            s.puts "Hello"
        end

        s.close
    end
end


gs.close