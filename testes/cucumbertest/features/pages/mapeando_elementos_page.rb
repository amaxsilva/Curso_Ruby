class MapeandoElementosPage < SitePrism::Page
    set_url '/users/new'

    element :nome, '#user_name' #onde nome recebe o id=user_name
    element :lastname, '#user_lastname'
    element :email, '#user_email'
    element :address, '#user_address'
    element :school, '#user_university'
    element :profile, '#user_profile'
    element :gender, '#user_gender'
    element :ager, '#user_age'


    def preencher
        nome.set 'Amax kerickson'
        lastname.set 'Alves da Silva'
        email.set 'amax.kerickson@gmail.com'
        address.set 'conquista flores'
        school.set 'Uninorte'
        profile.set 'QA'
        gender.set 'Masculino'
        ager.set '25'
    end

    end