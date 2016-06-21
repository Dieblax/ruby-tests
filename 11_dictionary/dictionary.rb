class Dictionary
	attr_reader :entries
	attr_reader :definitions
	def initialize
		@entries = {}
	end

	def add(hash = {})
		@entries.merge!(hash) unless hash.is_a? String
		if hash.is_a? String
			@entries[hash] = nil
		end
		@keywords = @entries.keys
		puts @keywords
		@definitions = @entries.values
	end

	def include?(key)
		if @keywords == nil
			return false
		elsif @keywords.include? key 
			return true
		else 
			return false
		end
	end

	def find(word)
		results = {}
		unless @keywords == nil
			@keywords.each do |key|
				if key.include? word
					results[key] = @entries[key]
				end
			end
			return results
		else 
			return results
		end
	end

	def keywords
		@keywords.sort!
		return @keywords
	end

	def printable
		print = ""
		sorted = keywords
		sorted.each { |word| print += "[#{word}] \"#{@entries[word]}\"\n" }
		print[-1, 2] = ""
		return print
	end
end

