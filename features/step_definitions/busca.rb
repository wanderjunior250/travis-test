Quando("eu realizar busca por {string}") do |texto|
  page.find('#sb_ifc0 input:nth-child(1)').set texto
  page.find('#sbtc > div.gstl_0.sbdd_a > div:nth-child(2) > div.sbdd_b > div > ul > li:nth-child(11) > div > span:nth-child(1) > span > input').click
end

Então("devo estar na tela de busca valida") do
  page.find('#sbfrm_l > #resultStats').visible?.should be true
end