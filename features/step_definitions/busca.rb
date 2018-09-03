Quando("eu realizar busca por {string}") do |texto|
  sleep(3)
  page.find('input#lst-ib').set texto
  page.find('#sbtc > div.gstl_0.sbdd_a > div:nth-child(2) > div.sbdd_b > div > ul > li:nth-child(11) > div > span:nth-child(1) > span > input').click
end

Então("devo estar na tela de busca valida") do
  page.find('#sbfrm_l > #resultStats').visible?.should be true
end