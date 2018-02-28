Dado (/que eu acesse a pagina inicial/) do
    visit home_index_path
end

Dado(/estando deslogado/) do
    page.has_content?("Faça ou crie seu Login")
end

Quando(/clica no botão Acessar Conta/) do
    click_link "Faça ou crie seu Login"
    click_link 'Login'
end

Quando(/acessa a tela de Login/) do
    page.has_content?("Esqueceu a senha?")
end

Quando("preenche o campo email com {string}") do |string|
    fill_in "login[email]", :with => string
end

Quando("preenche o campo senha com {string}") do |string|
    fill_in "login[password]", :with => string
end

Quando(/clica no botão Entrar/) do
    page.find(:id, "button-login").click
    save_and_open_page
end

Então("o usuário visualiza que está logado") do
    page.has_content?(/Bem vindo,/)
end