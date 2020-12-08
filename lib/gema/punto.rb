class Punto < Figura
	include Comparable
	attr_reader :x, :y
	def initialize(c, p, x,y)
		super(c, p)
		@x,@y = x, y
	end
	# métodos de instancia
	def * (value)
		Punto.new(@color, @peso*value, @x*value, @y*value)
	end
	def + (other)
		Punto.new(@color, @peso+other.peso, @x+other.x, @y+other.y)
	end
	def to_s
		super + "(#{@x},#{@y})"
	end
	# comparable 
	def <=> other 
		@x*@x + @y*@y <=> other.x * other.x + other.y * other.y
	end
	# igualdad 
	def == other 
		@color == other.color && @peso == other.peso && @x == other.x && @y == other.y
	end
end
