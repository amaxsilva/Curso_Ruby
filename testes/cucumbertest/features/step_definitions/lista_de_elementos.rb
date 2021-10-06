Quando('mapeio uma tabela') do
    @mapeando_listas = MapeandoListadeelementos.new

    @mapeando_listas.load
    sleep (2)
    puts @mapeando_listas.lista.size

    end