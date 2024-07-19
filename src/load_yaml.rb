require 'yaml'
 
#data = open('ipaddr.yaml', 'r') { |f| YAML.load(f) }
# p data # {"fruits"=>["Orange", "Apple", "Grape"]}

#google_ips = data["google.com"]
#puts "Google IPs: #{google_ips}"

#count = rand(0..(google_ips.length - 1))

#puts google_ips[count].to_s
message = ARGV[0]

def return_ip(message)
  data = open('ipaddr.yaml', 'r') { |f| YAML.load(f) }
  get_ips = data["#{message}"]
  count = rand(0..(get_ips.length - 1))

  return_ip = get_ips[count]
  puts return_ip
end

return_ip(message)