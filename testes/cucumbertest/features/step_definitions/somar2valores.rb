    Dado('que eu tenha dois numeros [{int} e {int}]') do |v1, v2|
        puts 'sistema esta somando os dois valor'
    end
    
    Quando('eu somar {int} {float} {int}') do |v1, float, v2|
        @soma = v1 + v2
    end
    
    Então('o sistema deve me responder com {int}') do |int|
        expect(@soma).to eq 3
        puts @soma
    end