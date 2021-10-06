Quando('clico no botão.') do

    @ajax = Ajaxpage.new
    #@ajax.load

    @ajax.clica_botao

  end
  
  Então('verifico se apareceu') do
   # @ajax.wait_for_msg #pego o metodo e chamo o elemento msg e o sistema aguarda a msg aparecer e validar abaixo
    expect(@ajax.msg.text).to eql 'Você Clicou no Botão!'
    sleep(2)
  end