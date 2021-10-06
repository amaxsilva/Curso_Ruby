Quando('que acesso a url botoes') do
    visit '/buscaelementos/botoes'
  end

  Entao('verifico se encontrei os elementos') do
    #all busca todos os elementos que contem o all
    page.all('.btn') # '.classe' e '#'id 
    #find busca um elemento mapeado #id
    find('#teste')
    #busca por id
    find_by_id('teste')
    #busca por botão
    find_button(class: 'btn waves-light')
    #busca por elemento que consta mapeado
    first('.btn')
    #busca por link pelo href
    #binding.pry
    find_lin(href: "https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA" )
    #binding.pry
    find_link(href:"https://medium.com/automa%C3%A7%C3%A3o-com-batista")
  end
  