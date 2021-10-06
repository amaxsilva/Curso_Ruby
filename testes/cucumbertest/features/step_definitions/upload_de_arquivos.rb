Quando('eu faço upload de arquivos') do
    visit '/outros/uploaddearquivos'

    Sattach_file('upload', 'C:\Users\amaxk\OneDrive\Pictures\kanban.png', make_visible: true) #elemento não esta visiveil então foi passado o make_visible: true

    # @foto = File.join(Dir.pwd, 'Pictures/kanban.png' )
    # attach_file('upload', @foto, make_visible: true)
    sleep(2)
end
