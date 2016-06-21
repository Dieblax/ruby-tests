class XmlDocument
	def initialize(indent = false)
		$tabs = 0
		@indent = indent
	end

	def send(name, attributes = {}, &block)
		if @indent
			nl = "\n"
			tabs = "  " * $tabs
			$tabs += 1
		else
			indentation = ""
			nl = ""
		end
		if block_given?
			s = block.call
			return "#{tabs}<#{name}#{att(attributes)}>#{nl}#{s}#{tabs}</#{name}>#{nl}"
		else
			return "#{tabs}<#{name}#{att(attributes)}/>#{nl}"
		end
	end

	def hello(attributes = {}, &block)
		return send("hello", attributes, &block)
	end

	def goodbye(attributes = {}, &block)
		return send("goodbye", attributes, &block)
	end

	def come_back(attributes = {}, &block)
		return send("come_back", attributes, &block)
	end

	def ok_fine(attributes = {}, &block)
		return send("ok_fine", attributes, &block)
	end

	private
	def att(attributes)
		unless attributes.empty?
			tag_attr = ""
			attributes.each do |key, value|
				tag_attr += " #{key.to_s}='#{value}'"
			end
			return tag_attr
		else
			return ""
		end
	end
end