class Ajaxpage < SitePrism::Page

    set_url '/buscaelementos/botoes'

    element :btn, '#teste'
    element :msg, '#div1' 

    def clica_botao
        await(btn)
        #wait_for_btn  #passa o elemento mapeado e aguardar o elemento na tela para depois efetuar o click
        btn.click

    end

end