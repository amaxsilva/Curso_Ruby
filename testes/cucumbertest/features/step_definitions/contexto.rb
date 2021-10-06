    Dado('que eu tenha {int} laranjas') do |valor1|
        @laranjas = valor1    
    end
    
    Quando('eu coloco {int} laranjas na bolsa') do |valor2|
        @bolsa = valor2
        @qtd = @laranjas + @bolsa
    
    end
    
    Então('eu fico com {int} laranjas') do |qtdtotal|
        expect(@qtd).to eq qtdtotal

        puts @qtdtotal
    end
    
    Quando('eu tiro {int} laranjas') do |valor3|
        @orange = valor3
        @qtdnova = @laranjas - @orange
   
    end
    
    Então('eu verifico com quantas laranjas eu fiquei') do
        expect(@qtdnova).to eq 18

        puts @qtdnova
    end