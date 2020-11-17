RSpec.describe Gema do
  describe Plano do    # Agrupa pruebas
	 it "Se debe poder instanciar un plano" do  # Describe una prueba 
		 expect(Plano.new).not_to eq(nil)
	 end
  end
end
