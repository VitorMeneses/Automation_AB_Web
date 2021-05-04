And("na tela Adress clico no botão Proceed to checkout") do
    page.execute_script("$('button.button.btn.btn-default.button-medium').click()")
end

And("na tela Shipping clico no botão Proceed to checkout") do
    page.execute_script("$('button.button.btn.btn-default.standard-checkout.button-medium').click()")
end
