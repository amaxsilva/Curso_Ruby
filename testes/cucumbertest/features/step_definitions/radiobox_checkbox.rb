Quando('eu marco um checkbox e um radiobox') do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    check('purple', allow_label_click: true) #usar a função check passando o paramentro purple e é necessario passar o allow....
    sleep(2)
    uncheck('purple', allow_label_click: true) #desmarca a opção 
    sleep(3)
    #checkbox
    choose('red', allow_label_click: true)
    sleep(2)
end