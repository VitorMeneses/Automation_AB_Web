Given("que esteja na tela de cadastro") do
    initial.load
    step 'efetuo um click no link Sign in'
    step 'o título da pagina deve ser "%s"' % "Login - My Store"
end

Given("que esteja na tela inicial do site Automation Practice") do
      initial.load
end

Given("que realizo a busca") do
      initial.click_search
end

And("efetuo um click no link Sign in") do
  initial.click_sign.click
end
