class ElementosPageIdiomas

def toque_no_idioma
  gestos = Appium::TouchAction.new
  wait(10){find_element(id: 'br.com.dafiti:id/image_flag_br').displayed?}
  gestos.tap(element: find_element(id: 'br.com.dafiti:id/image_flag_br')).perform
end

end
