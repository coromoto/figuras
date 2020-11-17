class Punto
	attr_reader :x, :y
	def initialize(x,y)
		@x,@y = x, y
	end
	# metodo de instancia
	def to_s
		"(#{@x},#{@y})"
	end
end
