
Quando('clico em um botão') do
    visit '/buscaelementos/botoes'
    find('#teste').click
  end
  
  Entao('Verifico se o texto desapareceu da tela') do
      
    #has verifica de acordo com a msg exibida
    page.has_text?('Você Clicou no Botão!')
    #have verifica de acordo com a msg exibida
    have_text('Você Clicou no Botão!')

    find('#teste').click
    assert_no_text(text, 'Você Clicou no Botão')
    has_no_text?('Você Clicou no Botão')

  end
  