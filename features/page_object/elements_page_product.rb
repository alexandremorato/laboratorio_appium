class ElementosPageProdutos

def swipe(num)
  novo_num = num.to_i
  @gestos = Appium::TouchAction.new
  wait(10){find_element(:id, 'br.com.dafiti:id/toolbar_title').displayed?}

case novo_num
when 1
  @gestos.swipe(:start_x => 965, :start_y => 973, :end_x => 235, :end_y => 1047, :duration => 1000).perform
when 2
  @gestos.swipe(:start_x => 965, :start_y => 973, :end_x => 235, :end_y => 1047, :duration => 1000).perform
  @gestos.swipe(:start_x => 965, :start_y => 973, :end_x => 235, :end_y => 1047, :duration => 1000).perform
when 3
  @gestos.swipe(:start_x => 965, :start_y => 973, :end_x => 235, :end_y => 1047, :duration => 1000).perform
  @gestos.swipe(:start_x => 965, :start_y => 973, :end_x => 235, :end_y => 1047, :duration => 1000).perform
  @gestos.swipe(:start_x => 965, :start_y => 973, :end_x => 235, :end_y => 1047, :duration => 1000).perform
end
  sleep 1
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
