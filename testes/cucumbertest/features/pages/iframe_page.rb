class Iframepagina < SitePrism::Page
    #mapeando os elementos
    element :firstname, '#first_name'
    element :lastname, '#last_name'

end

class PaginaIframe < SitePrism::Page
    
    set_url '/mudancadefoco/iframe' 
    iframe :preenchercampo, Iframepagina, '#id_do_iframe'

    end