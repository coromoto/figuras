RSpec.describe Gema do
  describe Plano do    # Agrupa pruebas
	 it "Se debe poder instanciar un plano" do  # Describe una prueba 
		 expect(Plano.new(:amarillo, 30.0, 2, 2)).not_to be(nil)
	 end
  end
end
