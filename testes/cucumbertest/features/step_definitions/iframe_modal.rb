Quando('entro no ifram e preencho os campos') do
    visit '/mudancadefoco/iframe'
    #iframe pode passar o nome puro
    within_frame('id_do_iframe') do 
        #iremos efetuar as ações dentro do iframe
    find('#first_name').set 'Amax '
    find('#last_name').set 'Kerickson '

        end
  end
  
  Quando('entro no modal e verifico o texto') do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click
     #modal
    within('#modal1') do
    texto = find('h4') #criado uma variavel q recebe o find e passamos a class ou ID como parametro
    expect(texto.text).to eql "Modal Teste"  #compara o texto em tela .
    sleep(5)
    find('a[class="modal-close waves-green btn-flat"]').click

    end

  end
  
  
  