RSpec.describe Gema do
  describe Punto do    # Agrupa pruebas
	 before :each do
		 @origen = Punto.new(:azul, 10.0, 0,  0)
		 @unidad = Punto.new(:rojo, 20.0, 1, 1)
	 end
	 context "Creacion de un punto" do 
	    	 it "Se debe poder instanciar un punto" do  # Describe una prueba 
			 #expect(@origen).not_to eq(nil)     # produce un error al modifiar el ==
			 expect(@origen).not_to be(nil)     

	    	 end
	    	 it "Se accede correctamente a la coordenada x" do  
	    		 expect(@origen.x).to eq(0)
	    	 end
	    	 it "Se accede correctamente a la coordenada y" do 
	    		 expect(@origen.y).to eq(0)
	    	 end
	    	 it "Se crea una cadena con el punto formateado" do 
	    		 expect(@origen.to_s).to eq("Punto(azul, 10.0)(0,0)")
	    		 expect(@unidad.to_s).to eq("Punto(rojo, 20.0)(1,1)")
	    	 end
	 end
	 context "Operaciones con un punto" do 
	    	 it "Producto por un escalar" do  
			 expect((@unidad*5).color).to eq(:rojo)
			 expect((@unidad*5).peso).to eq(100.0)
			 expect((@unidad*5).x).to eq(5)
			 expect((@unidad*5).y).to eq(5)
	    	 end
	    	 it "Suma de dos puntos" do  
			 expect(((@unidad)+(@unidad)).color).to eq(:rojo)
			 expect(((@unidad)+(@unidad)).peso).to eq(40.0)
			 expect(((@unidad)+(@unidad)).x).to eq(2)
			 expect(((@unidad)+(@unidad)).y).to eq(2)
	    	 end
	 end
	 context "Herencia" do 
	    	 it "La superclase de Punto es Figura" do  
			 expect(Punto.superclass).to eq(Figura)
	    	 end
	    	 it "Una instancia de un Punto es una Figura" do  
			 expect((@unidad).is_a?Figura).to eq(true)
	    	 end
	    	 it "Una instancia de un Punto es un Objeto" do  
			 expect((@unidad).is_a?Object).to eq(true)
	    	 end
	    	 it "Una instancia de un Punto no es una Cadena" do  
			 expect((@unidad).is_a?String).to eq(false)
	    	 end
	    	 it "Una instancia de un Punto no es un Numero" do  
			 expect((@unidad).is_a?Numeric).to eq(false)
	    	 end
	 end
	 context "Comparable" do 
	    	 it "origen < unidad" do  
			 expect(@origen < @unidad).to eq(true)
	    	 end
	    	 it "origen <= unidad" do  
			 expect(@origen <= @unidad).to eq(true)
	    	 end
	    	 it "unidad > origen" do  
			 expect(@unidad > @origen).to eq(true)
	    	 end
	    	 it "unidad >= origen" do  
			 expect(@unidad >= @origen).to eq(true)
	    	 end
		 it "(1/2, 1/2).between?( (0,0) - (1,1) )" do  
			 expect(Punto.new(:verde, 5.0, 0.5, 0.5).between?(@origen, @unidad)).to eq(true)
	    	 end
		 it "(1/2, 1/2).between?( (1,1) - (1,1) )" do  
			 expect(Punto.new(:verde, 5.0, 0.5, 0.5).between?(@unidad, @unidad)).to eq(false)
	    	 end
		 it "(1/2, 1/2).clamp((0,0) - (1,1)) # (1/2, 1/2)" do
			 medio = Punto.new(:verde, 5.0, 0.5, 0.5)
			 expect(medio.clamp(@origen, @unidad)).to eq(medio)
	    	 end
		 it "(3/2, 3/2).clamp((0,0) - (1,1)) # (3/2, 3/2)" do
			 mas   = Punto.new(:verde, 5.0, 1.5, 1.5)
			 expect(mas.clamp(@origen, @unidad)).to eq(@unidad)
	    	 end
		 it "unidad == Punto(rojo, 20.0)(1,1)" do  
			 expect(@unidad).to eq(Punto.new(:rojo, 20.0, 1, 1))
	    	 end
	 end
  end
end
