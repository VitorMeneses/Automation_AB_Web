After('@logout') do
  initial.do_logout
end

After do |scenario|
    if scenario.failed?
      tirar_foto(scenario.name.gsub(' ', '_'), "Failed")
    else
      tirar_foto(scenario.name.gsub(' ', '_'), "Passed")
    end
end
