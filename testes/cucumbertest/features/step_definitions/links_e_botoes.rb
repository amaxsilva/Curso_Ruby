Quando('clico em botoes') do
   visit '/'
   #é a mesma coisa que o click_link_or_button
   click_on('Começar Automação Web') 
   visit '/buscaelementos/botoes'
   #clica direto no botão
   click_button(class: 'btn waves-light')
   #procura o elemento e clica
   find('a[onclick="ativaedesativa2()"]').click
   #efetua double click no elemento
   find('a[onclick="ativaedesativa2()"]').double_click
   #clica com botão direito do mouse 
   find('a[onclick="ativaedesativa3()"]').right_click
   visit '/'
   #clica em um link
   click_link('Github')
   sleep(5)
  end
  