And("clico no botão Create an account") do
  page.execute_script("$('#SubmitCreate').click()")
end

And("preencho os campos de informação pessoal com os seguintes valores") do |table|
    data = table.hashes[0]["Date_of_Birth"].split("/")

    create_account.fill_in_personal_information(table.hashes[0]["Title"], table.hashes[0]["First_name"],
                                                table.hashes[0]["Last_name"], table.hashes[0]["Password"])
    create_account.set_date_birth(data)
end

And("preencho os campos de endereço com as seguintes valores") do |table|
  create_account.fill_in_address(table.hashes[0]["First_name"], table.hashes[0]["Last_name"],
                                 table.hashes[0]["Adress"], table.hashes[0]["City"],
                                 table.hashes[0]["State"], table.hashes[0]["Zip"],
                                 table.hashes[0]["Mobile"], table.hashes[0]["References"])

  create_account.set_state(table.hashes[0]["State"])
end

And("clico no botão Register") do
  create_account.click_register
end

When("preencho o campo Email address {string}") do |email|
  r = Random.new
  email_random = r.rand(10000).to_s + email

  authentication.send_email(email_random)

  File.open("save_email.txt", "w")  do |save_email|
    save_email << email_random
  end
end
