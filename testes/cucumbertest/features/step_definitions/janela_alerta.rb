Quando('entro na janela verifico a mensagem') do
    visit '/mudancadefoco/janela'

    #janela recebe uma janela que foi aberta pelo link
    janela = window_opened_by do #instanciando um metodo
        click_link 'Clique aqui' #comando usado para clicar em link
        #find('.btn waves-light red').click

        end

        #muda o foco para a janela
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow' # valida se a url da nova janela é igual 
        
        @msg = find('.red-text.text-darken-1.center')
        expect(@msg.text).to eql "Você Abriu uma nova janela!!" #valida a msg da segunda tela
        janela.close #fecha a janela
        sleep(5)

    end

end
  
  Quando('entro no alerta e verifico foco da ação') do
    visit '/mudancadefoco/alert'
    find('button[onclick="jsAlert()"]').click
    page.accept_alert #procura e aceita o alerta na tela
    
    @mensagem = find('#result')
    expect(@mensagem.text).to eq "Você clicou no alerta com sucesso!!"

    #cancelar um alerta
    find('button[onclick="jsConfirm()"]').click
    sleep(2)
    page.dismiss_confirm #cancela o alerta

    @cancelar =  find('#result')
    expect(@cancelar.text).to eql "Você clicou: Cancel"

    #prompt
    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Amax Kerickson') #digita no prompt e aceita

    @prompt = find('#result')
    expect(@prompt.text).to eql "Você digitou: Amax Kerickson"
    end