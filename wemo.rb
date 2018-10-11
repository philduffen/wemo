require 'wemote'
switches = Wemote::Switch.all
puts switches.inspect
switch = Wemote::Switch.find('light')
sleep 5
switch.toggle!
sleep 5
switch.toggle!
switches.each do |s|

puts s.client.inspect
end

puts switch.on?

#[#<Wemote::Switch:0x00007fd5d698f450 @port="49153", @host="192.168.1.113", @client=#<Wemote::Client:0x00007fd5d698f428>, @name="kettle">,

#<Wemote::Switch:0x00007fd5d58cc870 @port="49153", @host="192.168.1.135", @client=#<Wemote::Client:0x00007fd5d58cc780>, @name="light">]
