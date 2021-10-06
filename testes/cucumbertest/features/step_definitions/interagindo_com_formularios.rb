Quando('eu faço cadastro') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Amax') #pega o elemento mapeado e adiciona(with) bruno
    find('#user_lastname').set('Kerickson')
    find('#user_email').send_keys('amax.kerickson@gmail.com')

    fill_in(id: 'user_address', with: 'Jose Lindoso') #pega o elemento mapeado e adiciona(with) bruno
    find('#user_university').set('Uninorte')
    find('#user_profile').send_keys('Engenheiro de qualidade')
    find('#user_gender').set('masculino')
    find('#user_age').set('25')
    find('input[value="Criar"]').click #quando não houver id ou class usamos o metodo cssselector para pegar o elemento
    sleep (5)
  end
  
  Entao('verifico se fui cadastrado') do
    texto = find('#notice') #criado uma variavel q recebe o find e passamos a class ou ID como parametro

    expect(texto.text).to eql 'Usuário Criado com sucesso' #compara com o texto exibido na tela 

  end