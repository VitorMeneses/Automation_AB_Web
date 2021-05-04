And("valido as seguintes informações do pedido") do |table|
  dict_size = {"S": 1, "M": 2, "L": 3}

  expect(cart.text_name_shirts.text).to eq(table.hashes[0]["name_product"])
  expect(cart.shirts_quantity[:value]).to eq(table.hashes[0]["quantity"])
  expect(page.execute_script("return $('#group_1').attr('value')").to_i).to eq(dict_size[table.hashes[0]["size"].to_sym])
  expect(cart.shirts_verify_color[:class]).to eq("color_pick selected")
end

And("clico no botão Add to cart") do
      cart.click_button_add_cart_buy
end


And("seleciono o Short de cor laranja") do
      list_tshirts.select_color_shirts_orange
end
