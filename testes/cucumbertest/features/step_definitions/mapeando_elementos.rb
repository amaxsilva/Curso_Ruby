Quando('preencho o formulario') do
    @mapeando = MapeandoElementosPage.new
    @mapeando.load #chamando a url passado no po
    @mapeando.preencher #chamando o metodo
    sleep(5)

end