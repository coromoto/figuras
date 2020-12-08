class Figura
	include Comparable
	attr_reader :color, :peso 
	def initialize (color, peso)
		@color = color
		@peso = peso
	end
	def to_s 
		"#{self.class}(#{@color}, #{@peso})"
	end
	def <=> other
		@peso <=> other.peso
	end
	def == other
		@color == other.color && @peso == other.peso
	end
end
