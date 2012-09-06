#my_ex03-app.rb
class MyEx03App

	def call(env)
		#could not get ARGV via rackup.... hence just hardcoded the word hello word
		[200,{"Content-Type"=>"text/plain"},["Hello World".split(" ").reverse.join(" ")]]
	end
end
	