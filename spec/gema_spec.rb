RSpec.describe Gema do
  it "has a version number" do
    expect(Gema::VERSION).not_to be nil
  end

  context "does something useful like create a collection of Figures and operate with them" do
    before :each do
      @uno    = Punto.new(:amarillo, 1.0, 0.0, 4.0)
      @dos    = Punto.new(:amarillo, 1.0, 1.0, 3.0)
      @tres   = Punto.new(:amarillo, 1.0, 2.0, 2.0)
      @cuatro = Punto.new(:amarillo, 1.0, 3.0, 1.0)
      @cinco  = Punto.new(:amarillo, 1.0, 4.0, 0.0)
      @tanda  = [@uno, @dos, @tres, @cuatro, @cinco]
    end
    it "Calcular el punto que tiene máxima distancia al origen " do
      expect(@tanda.max).to eq(@uno)
    end
    it "Calcular el valor de la máxima distancia al origen " do
      punto = @tanda.max
      expect(Math.sqrt((punto.x)**2 + (punto.y)**2)).to eq(4.0)
    end
    it "Crear una nueva tanda de puntos cuyas coordenadas estén incrementadas por el valor 10" do
      uno    = Punto.new(:amarillo, 10.0,  0.0, 40.0)
      dos    = Punto.new(:amarillo, 10.0, 10.0, 30.0)
      tres   = Punto.new(:amarillo, 10.0, 20.0, 20.0)
      cuatro = Punto.new(:amarillo, 10.0, 30.0, 10.0)
      cinco  = Punto.new(:amarillo, 10.0, 40.0,  0.0)
      tanda  = [uno, dos, tres, cuatro, cinco]
      expect(@tanda.collect {|p| p * 10}).to eq(tanda)
    end
    it "Crear una nueva tanda de puntos cuyas coordenadas estén incrementadas por el valor de la máxima distancia al origen" do
      uno    = Punto.new(:amarillo, 4.0,  0.0, 16.0)
      dos    = Punto.new(:amarillo, 4.0,  4.0, 12.0)
      tres   = Punto.new(:amarillo, 4.0,  8.0,  8.0)
      cuatro = Punto.new(:amarillo, 4.0, 12.0,  4.0)
      cinco  = Punto.new(:amarillo, 4.0, 16.0,  0.0)
      tanda  = [uno, dos, tres, cuatro, cinco]
      expect(@tanda.collect {|p| p * Math.sqrt(@tanda.max.x**2+@tanda.max.y**2)}).to eq(tanda)
    end
    it "Encontrar el punto de color azul peso 10 y distancia al origen 4" do
	    expect(@tanda.detect {|p| p.color == :azul && p.peso == 10 && p.x == 0.0 && p.y == 4.0}).to eq(nil)
    end
    it "Encontrar todos los puntos de color azul peso 10 y distancia al origen 4" do
	    expect(@tanda.find_all {|p| p.color == :azul && p.peso == 10 && p.x == 0.0 && p.y == 4.0}).to eq([])
    end
  end
end
