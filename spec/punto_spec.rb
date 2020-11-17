RSpec.describe Gema do
  describe Punto do    # Agrupa pruebas
	 it "Se debe poder instanciar un punto" do  # Describe una prueba 
		 expect(Punto.new(0,0)).not_to eq(nil)
	 end
  end
end
