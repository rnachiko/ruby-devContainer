require 'socket'

# サーバのホストとポートを指定
host = '127.0.0.1'
port = 53

c = UDPSocket.new

# サーバにメッセージを送信
message = ARGV[0]
# IPアドレスを返してくれる問い合わせ内容は以下の通り
# google.com,yahoo.co.jp
# 上記以外は　NXDOMAIN

c.send(message, 0, host, port)

# サーバからの応答を受信
response, _ = c.recvfrom(1024)
puts "#{response}"

c.close
