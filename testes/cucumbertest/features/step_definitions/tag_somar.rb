    Dado('que tenho {int} reais') do |valor1|
    @variavel1 = valor1
    end
    
    Quando('eu ganho mais {int} reais') do |valor2|
    @variavel2 = valor2
    @resultado =  @variavel1 + @variavel2
    end
    
    Então('vejo quanto eu tenho') do
      puts @resultado
      expect(@resultado).to eq 15
    end