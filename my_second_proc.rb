#my_second_proc.rb
#method for checking number from the command line
def look_at_number(number)
if number > 0
	output ="positive"
elsif number < 0
output="negative"
elsif number==0
output="zero"
else
	output="Not a integer"
end
end

puts "Enter any enter negative, positive or zero: " # ask for a number
STDOUT.flush
number=gets.chomp!.to_i # get a number change it to integer

output =look_at_number(number)
my_second_proc=lambda{|env| [200, {"Content-Type"=>"text/plain"},["The number you entered on command line is #{output}"]]}

puts my_second_proc.call({})