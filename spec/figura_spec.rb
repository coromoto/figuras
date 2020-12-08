RSpec.describe Gema do
  describe Figura do    # Agrupa pruebas
	 before :each do
		 @punto = Punto.new(:azul,     10.0, 0, 0)
		 @recta = Recta.new(:rojo,     20.0, 1, 1)
		 @plano = Plano.new(:amarillo, 30.0, 2, 2)
	 end
	 context "Creacion de una Figura" do 
	    	 it "Se debe poder instanciar un punto" do  
			 expect(@punto).not_to be(nil)     
	    	 end
	    	 it "Se debe poder instanciar una recta" do  
			 expect(@recta).not_to be(nil)     
	    	 end
	    	 it "Se debe poder instanciar un plano" do  
			 expect(@plano).not_to be(nil)     
	    	 end
	 end
	 context "Herencia de Figuras" do 
	    	 it "La superclase de Punto es Figura" do  
			 expect(Punto.superclass).to eq(Figura)
	    	 end
	    	 it "La superclase de Recta es Figura" do  
			 expect(Recta.superclass).to eq(Figura)
	    	 end
	    	 it "La superclase de Plano es Figura" do  
			 expect(Plano.superclass).to eq(Figura)
	    	 end
	    	 it "Una instancia de un Punto es una Figura" do  
			 expect((@punto).is_a?Figura).to eq(true)
	    	 end
	    	 it "Una instancia de una Recta es una Figura" do  
			 expect((@recta).is_a?Figura).to eq(true)
	    	 end
	    	 it "Una instancia de un Plano es una Figura" do  
			 expect((@plano).is_a?Figura).to eq(true)
	    	 end
	 end
	 context "Comparable" do 
	    	 it "punto < recta - instanciados a nivel de Figura" do  
			 expect(Figura.new(:azul, 1.0) < Figura.new(:amarilla, 1.0)).to eq(false)
	    	 end
	 end
  end
end
