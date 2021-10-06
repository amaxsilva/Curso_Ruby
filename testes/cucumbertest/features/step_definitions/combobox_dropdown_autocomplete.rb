Quando('interejo com dropdown e select') do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    select 'Chrome', from: 'dropdown'  #seleciona a opção no caso chrome do determinado select
    find('option[value="2"]').select_option
    sleep(5)
  end
  
  Quando('preencho o autocomplete') do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Amaz' #adigita parte da palavra e depois clica na opção correta
    find('ul', text: 'Amazonas').click # ele procura dentro da tag ul o text Amazonas
    sleep(5)

  end
  