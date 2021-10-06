module Helper
   def tirar_foto(nome_arquivo, resultado)
       time = Time.now.strftime('%D-%m-%y %H-%M-%S')
       caminho_arquivo = "results/screenshots/test_#{resultado}"
       foto = "#{caminho_arquivo}/#{nome_arquivo}_#{time}.png"
       page.save_screenshot(foto)
       
       # embed(foto, 'image/png', 'Clique aqui')

   end
end