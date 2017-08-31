class ElementosPageProdutos

def swipe(num)
  novo_num = num.to_i
  @gestos = Appium::TouchAction.new
  wait(10){find_element(:id, 'br.com.dafiti:id/toolbar_title').displayed?}

novo_num.times do
  @gestos.swipe(:start_x => 965, :start_y => 973, :end_x => 235, :end_y => 1047, :duration => 1000).perform
end

end

def verifica_transicao(param)
  novo_param = param.to_i
  find_element(:id, 'br.com.dafiti:id/tabs').find_elements(:class, 'android.widget.TextView')[novo_param].selected?
end

def verifica_texto_transicao(param)
  novo_param = param.to_i
  find_element(:id, 'br.com.dafiti:id/tabs').find_elements(:class, 'android.widget.TextView')[novo_param].text
end

end
