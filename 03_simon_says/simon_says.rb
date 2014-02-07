def echo(x)
	return x
end

def shout(x)
	x.upcase
end

puts shout("hello_world")

#make use of default values in the argument field
def repeat(x,reps=2)
	# if I exclude .join, the result will be stacked on top of each other
	([x] * reps).join(" ")
end

puts repeat("hello", reps=2)

#indexes in Ruby start with '0', thus ("hello", 1) gives index = 0 which traces the 1st character 
def start_of_word(word,length)
	word[0..length-1]
end

# syntax just for 1st charaters: 
# word[0,1]
# word.chars.first


def first_word(string)
	string.split(" ")[0]
end

puts first_word('Hello World')
puts first_word('oh dear')

	
def titleize(string)
	except = ["and", "over", "the"]
  array = string.split(' ')

  array.each { |w|
    w.capitalize! unless except.include?(w)
  }

  array[0].capitalize!   
  array.join(' ')

end
puts titleize("the bridge over the river kwai")