class Plano < Figura
	# definición de la clase plano
	include Comparable
	attr_reader :x, :y
	def initialize(c, p, m, r)
		super(c, p)
		@m, @r = m, r
	end
	def to_s
		super + "(#{@m},#{@r})"
	end
	# igualdad 
	def == other 
		@color == other.color && @peso == other.peso && @x == other.m && @y == other.r
	end
end
