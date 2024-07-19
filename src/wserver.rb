#! /usr/bin/env ruby

require 'socket'
require 'yaml'

gs = TCPServer.open(5000)
s = gs.accept
s.puts "HTTP/1.1 200 OK"
s.puts

while true
    while line = s.gets
        line.chomp!
        break if line == ""
        s.puts line
    end
    s.close

    sleep 20
end


gs.close