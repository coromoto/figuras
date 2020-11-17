RSpec.describe Gema do
  describe Punto do    # Agrupa pruebas
	 before :each do
		 @origen = Punto.new(0,0)
		 @unidad = Punto.new(1,1)
	 end
	 it "Se debe poder instanciar un punto" do  # Describe una prueba 
		 expect(@origen).not_to eq(nil)
	 end
	 it "Se accede correctamente a la coordenada x" do  # Describe una prueba 
		 expect(@origen.x).to eq(0)
	 end
	 it "Se accede correctamente a la coordenada y" do  # Describe una prueba 
		 expect(@origen.y).to eq(0)
	 end
	 it "Se crea una cadena con el punto formateado" do  # Describe una prueba 
		 expect(@origen.to_s).to eq("(0,0)")
		 expect(@unidad.to_s).to eq("(1,1)")
	 end
  end
end
