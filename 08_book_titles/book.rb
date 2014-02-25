
class Book
	attr_accessor :title

	def title=(book_title)
		words = book_title.split(" ")
		words = [words[0].capitalize] + words[1..-1].map do |word|
			other_words = %w{a an and the in of}
			if other_words.include? word
				word
			else
				word.capitalize
			end	
		end		
		@title = words.join(" ")
	end
end
