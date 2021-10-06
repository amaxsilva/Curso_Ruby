#para datatable com linhas sempre usamos table.row
#hash[''] utilizamos para pegar o elemento na tabela e transforma
#to_i para transformar em inteiros
#a variavel @laranja recebe o valor da tabela

  Dado('que eu tenha umas laranjas') do |table|
    @laranja = table.rows_hash['laranja'].to_i
    end
  
  Quando('eu corto {int} laranjas') do |valor1|
    @corto = valor1
    @total = @laranja - @corto 
  end
  
  Então('eu verifico quantas laranjas sobraram inteiras') do
   expect(@total).to eq 8
  end

#para datatable com linhas sempre usamos table.hashes
#each[''] utilizamos para pegar o elemento na tabela
#to_i para transformar em inteiros
#a variavel @laranjas recebe o valor da tabela  
  Dado('que eu tenha laranjas') do |table|
    table.hashes.each do |valor|
    @laranjas = valor['laranja'].to_i
    end
  end
  
  Quando('eu chupo {int} laranjas') do |valor2|
    @chupei = valor2
    @total2 = @laranjas - @chupei    
  end
  
  Então('eu verifico quantas laranjas sobraram') do
    expect(@total2).to eq 8
  end


  Dado('que eu tenho uma sacola com dois tipos de frutas') do |table|
   @lara = table.rows_hash['laranja'].to_i
   @uv = table.rows_hash['uva'].to_i
    
  end
  
  Quando('estava andando comi {int} uva e {int} laranja') do |val1, val2|
    @fruit = val1
    @fruta = val2
    @totall1 = @fruit - @lara
    @taotall2 = @fruta - @uv
  
  end
  
  Então('quantas frutas eu te tenho na sacola') do
    expect(@totall1).to eq 2
    expect( @taotall2).to eq 1
    
    #puts '@saco' and '@sacola'
  end