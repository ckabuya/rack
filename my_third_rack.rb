#tmy_third_rack.rb
=begin
Write a Rack app that has a method which accepts a string from the command line and
reserve the word order (rather than character order. For example, when i run my program as:
$ruby my_prog.rb "Hello World"
In my browser window, I see: World Hello
=end
require 'rack'

def reverseStrings()
	tmp=ARGV[0].split(" ").reverse.join(" ")
end
def rackMethod(env)
[200,{"Content-Type"=>"text/plain"},[reverseStrings()]]
 end
Rack::Handler::WEBrick.run  method(:rackMethod), :Port=>9090
#puts rackMethod("")