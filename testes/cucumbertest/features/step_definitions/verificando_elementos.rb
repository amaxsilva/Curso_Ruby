
Quando('clico no botão') do
    visit '/buscaelementos/botoes'
    find('#teste').click
  end
  
  Entao('verifico se o texto apareceu na tela com sucesso') do
    # @texto = find('#div1')
    # expect(@texto.text).to eql "Você Clicou no Botão!"
    
    #assert verifica em todo o site
    page.assert_text(text,'Você Clicou no Botão!') 
    #has verifica de acordo com a msg exibida
    page.has_text?('Você Clicou no Botão!')
    #have verifica de acordo com a msg exibida
    have_text('Você Clicou no Botão!')
  end
  