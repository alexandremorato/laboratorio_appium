Dado(/^que o usuário está na página de idiomas$/) do

end

Quando(/^ele tocar na tela$/) do
  @el_idiomas.toque_no_idioma
end

Então(/^o sistema deve apresentar a página de categoria$/) do
  expect(@el_categoria.verifica_pagina_categoria).to eql true
end


Dado(/^que o usuário está na página de produtos$/) do
  @el_idiomas.toque_no_idioma
  @el_categoria.categoria
end

Quando(/^ele deslizar com dedo da direita para esquerda (\d+) vez$/) do |param|
    @param = param
    @param.to_i
    @el_produtos.swipe(@param)
end

Então(/^o sistema deve realizar apresentar os itens da página$/) do |string|
  expect(@el_produtos.verifica_texto_transicao(@param)).to eql string
  expect(@el_produtos.verifica_transicao(@param)).to eql true
end


Quando(/^ele deslizar com dedo da direita para esquerda (\d+) vezes$/) do |param|
  @param = param
  @el_produtos.swipe(@param)
end


Então(/^o sistema deve realizar apresentar o itens da página$/) do |string|
  expect(@el_produtos.verifica_texto_transicao(@param)).to eql string
  expect(@el_produtos.verifica_transicao(@param)).to eql true
end
