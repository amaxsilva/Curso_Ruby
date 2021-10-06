Dado('que eu estou em uma tela de dragdrop') do
    visit '/iteracoes/draganddrop'
  end
  
  Quando('movo o dragdrop') do
    @elemento1 = page.find('img[id="winston"]')
    @elemento2 = page.find('#dropzone')

    @elemento1.drag_to(@elemento2)

    sleep(2)

end
  