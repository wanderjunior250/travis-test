Quando("eu realizar busca por {string}") do |texto|
  page.find('#sb_ifc0 input:nth-child(1)').set texto
  page.find('#tsf > div.tsf-p > div.jsb > center > input[type="submit"]:nth-child(1)').click
end

Então("devo estar na tela de busca valida") do
  page.find('#sbfrm_l > #resultStats').visible?.should be true
end