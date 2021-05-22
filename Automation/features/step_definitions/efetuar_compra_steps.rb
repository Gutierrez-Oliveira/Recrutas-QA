Dado('que acesse a página de login') do
  visit "?controller=authentication&back=my-account"
end

Quando('submeto minhas credenciais com {string} e {string}') do |email, senha|
  find("#email").set email
  find("#passwd").set senha

  click_button "Sign in"
end

Quando('efetuo a compra de um produto masculino') do
  find("#block_top_menu > ul > li:nth-child(1) > a").click
  find("#list").click
  find("#center_column > ul > li:nth-child(1) > div > div > div.right-block.col-xs-4.col-xs-12.col-md-4 > div > div.button-container.col-xs-7.col-md-12 > a.button.ajax_add_to_cart_button.btn.btn-default").click
  find("#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a > span").click
  find("#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium > span").click
  find("#center_column > form > p > button > span").click
  find("#uniform-cgv").click
  find("#form > p > button > span").click
  find("#HOOK_PAYMENT > div:nth-child(1) > div").click
  find("#cart_navigation > button > span").click
  
end

Entao('valido que a compra está no historico de pedidos') do
    text = find(:xpath, "//div[@id='center_column']/div").text
    text = text.split(' ')
    text = text[42]
    find("#center_column > p > a").click
    pedidos = all("#order-list > tbody > tr")
    #binding.pry
    pedidos.each do |pedido|
      if pedido.text.include?(text)
        expect(pedido.text.include?(text)).to eql true
        break
      else
        raise 'Pedido não encontrado'
      end
    end
end