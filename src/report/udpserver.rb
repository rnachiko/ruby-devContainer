require 'socket'
require 'yaml'

# グローバル変数でインデックスを保持


#rand_ip method 
def return_rand_ip(message)
    data = open('ipaddr.yaml', 'r') { |f| YAML.load(f) }
    get_ips = data["#{message}"]
    count = rand(0..(get_ips.length - 1))
    return_ip = get_ips[count]

    return return_ip
end

#round_robin method
def return_round_robin_ip(message)
    $index_hash = Hash.new(0)

    data = open('ipaddr.yaml', 'r') { |f| YAML.load(f) }
    get_ips = data["#{message}"]
    
    #get index
    index = $index_hash[message]
    
    return_ip = get_ips[index]

    $index_hash[message] = (index + 1) % get_ips.length
  
    return return_ip
end



s = UDPSocket.new
s.bind('127.0.0.1', 53)

puts 'started UDP Server'

while true
    message, addr = s.recvfrom(1024)

    #puts message #クライアントから送られてきたメッセージを表示
    #addr[3] -> IP address
    #addr[1] -> Port-num
    #参考 -> https://docs.ruby-lang.org/ja/latest/method/IPSocket/i/addr.html
    if message == "google.com" 
        s.send("#{return_rand_ip("google.com")}", 0, addr[3], addr[1])
    elsif message == "yahoo.co.jp"
        s.send("#{return_round_robin_ip("yahoo.co.jp")}", 0, addr[3], addr[1])
    else
        s.send("NXDOMAIN", 0, addr[3], addr[1])
    end
end


