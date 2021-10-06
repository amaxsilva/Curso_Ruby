Quando('preencho os campos.') do
    @pagina = PaginaIframe.new
    @pagina.load

    @pagina.preenchercampo do |iframe|
        iframe.firstname.set 'Amax'
        iframe.lastname.set 'Alves'
        end
end
