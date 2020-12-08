RSpec.describe Gema do
  describe Recta do    # Agrupa pruebas
	 it "Se debe poder instanciar una recta" do  # Describe una prueba 
		 expect(Recta.new(:azul, 20, 1, 1)).not_to be(nil)
	 end
  end
end
