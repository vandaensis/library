class IsbnValidator

	# Comment like this.

=begin
	This is a multi-line comment. The = must be in the beginning of the line, on idented.
=end

	# instance variable @isbn only has a getter
	attr_reader :isbn


	def initialize(isbn)
		@isbn = cleanup_isbn(isbn)
	end	

	# public methods are defined first at the top. It is also possible to use word "public"
	# below the private methods

	def valid?
		# The method will return the last thing written on it, the word "return" is optional.
		#	return true
		true
	end

	# Private stuff of the class is below the private line.
	private

	def cleanup_isbn(isbn)
		# swaps to downcase characters, removes dashes (-) and whitespaces ( )
		# gsub takes also regex
		return isbn.downcase.gsub("-", "").gsub(" ", "")
	end
	
end

