RSpec.describe Gema do
  it "has a version number" do
    expect(Gema::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  describe Punto do    # Agrupa pruebas
	 it "Se debe poder instanciar un punto" do  # Describe una prueba 
		 expect(Punto.new(0,0)).not_to eq(nil)
	 end
  end
end
