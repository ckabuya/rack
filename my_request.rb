# my_request.rb 
class MyRequest 
def call(env)
req = Rack::Request.new(env) 
name = req.params['name'] 
sortList = name.split("\n").sort.join("\n")
Rack::Response.new.finish do |res| 
	res['Content-Type'] = 'text/html'
	res.status = 200
str = "Sorted List:\n#{sortList}" 
res.write str 
end
end
end