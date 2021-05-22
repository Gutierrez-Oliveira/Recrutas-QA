Dado('que eu estou no página de cadastro') do
    visit "?controller=authentication&back=my-account"
end
  
Quando('preencho os dados') do

    nome = Faker::Name.name
    find("#email_create").set Faker::Internet.email

    click_button "Create an account"
    
    find("#uniform-id_gender1").click
    find("#customer_firstname").set nome 
    find("#customer_lastname").set  nome
    find("#passwd").set "pwd123"
    find("#days > option:nth-child(16)").click
    find("#months > option:nth-child(2)").click
    find("#years > option:nth-child(25)").click
    find("#firstname").set nome
    find("#lastname").set nome
    find("#address1").set "Rua Olinda, Nº52"
    find("#city").set "Caracas"
    find("#id_state > option:nth-child(11)").click
    find("#postcode").set "30363"
    find("#phone_mobile").set "11958747820"
    find("#alias").set "Logo ali"

    click_button "Register"
   


end
  
Então('valido que o cadastro foi concluido') do
    
end