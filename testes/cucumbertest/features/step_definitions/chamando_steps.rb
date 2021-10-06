    Dado('que eu tenho {int} laranjas no estoque') do |valor1|
    @laranja = valor1
    end
    
    Quando('eu amasso {int} laranjas') do |amasso|
        @total = @laranja - amasso
    end
    
    Então('eu verifico quantas laranjas sobram no estoque') do
        expect(@total).to eq 8
    end
    
    Quando('Revendo {int} laranjas') do |valor2|
        steps %Q{
            Dado que eu tenho 10 laranjas no estoque
        } 
        @revendo = @laranja - valor2   
    end
    
    Então('eu verifico quantas laranjas eu fiquei') do
      expect(@revendo).to eq 8
    end