Quando('clico no elemento da sessao.') do
    @pagina = Pagina.new #instanciou
    @pagina.load #chama a url

    #@pagina.clicar_navbar
    @pagina.navbar.medium.click 
    end