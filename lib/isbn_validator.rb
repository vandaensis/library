class IsbnValidator

	# Comment like this.

=begin
	This is a multi-line comment. The = must be in the beginning of the line, on idented.
=end

	# constant is defined with capitals
	VALID_CHARACTERS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'x'] 

	# instance variable @isbn only has a getter
	attr_reader :isbn


	def initialize(isbn)
		# if given isbn string is nil, then @isbn will be ""		
		# if isbn == nil --> if isbn.nil?
		
		if isbn.nil?		
			@isbn = ""
		else
			@isbn = cleanup_isbn(isbn)
		end
	end	

	# public methods are defined first at the top. It is also possible to use word "public"
	# below the private methods

	def valid?
		# The method will return the last thing written on it, the word "return" is optional.

		#	Will return true if length is 10 or 13 charachters, otherwise false.
		if @isbn.size == 10 || @isbn.size == 13
			return true
		else
			return false # word return is not required here, but makes things easier to read
		end
		
	end

	# Class method begins with self.
	def self.valid_character?(c)
		# Check the character to be either digit 0-9 or x -> return true, otherwise false.

		return c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' ||
						c == '7' || c == '8' || c == '9' || c == '0' || c == 'x'

	end


	# Private stuff of the class is below the private line.
	private

	def cleanup_isbn(isbn)
		# swaps to downcase characters, removes dashes (-) and whitespaces ( )
		# gsub takes also regex
		return isbn.downcase.gsub("-", "").gsub(" ", "")
	end
	
end

