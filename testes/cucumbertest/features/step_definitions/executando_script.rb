Quando('eu executo um script') do
    visit '/outros/scroll'

    page.execute_script("window.scrollBy(0,1500)")
    sleep(2)
end