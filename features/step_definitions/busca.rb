Então("devo estar na home do site") do
  sleep(5)
  page.find('#body #hplogo').visible?.should be true
end