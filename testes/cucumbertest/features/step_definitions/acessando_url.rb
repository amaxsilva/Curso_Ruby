Quando('acessar a url') do
    @home = PaginaInicial.new #instancia a variavel e jogamos dentro do @home
    @home.load

    #visit '/treinamento/home' #acessa o caminho da página web desejada sem comprometer o acesso ao site principal
    
  end
  
  Entao('eu verifico a pagina correta') do
     expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true) #validamos se estamos na url certa.
    sleep (10)
  end