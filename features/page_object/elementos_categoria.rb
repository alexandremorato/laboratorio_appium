class ElementosPageCategoria

  def categoria
    wait(10){find_element(:id,'br.com.dafiti:id/main_layout_home').displayed?}
    find_element(:id,'br.com.dafiti:id/main_layout_home').find_elements(:class, 'android.widget.ImageView')[1].click
  end

  def verifica_pagina_categoria
    wait(10){find_element(:id,'br.com.dafiti:id/main_layout_home').displayed?}
    find_element(:id,'br.com.dafiti:id/main_layout_home').find_elements(:class, 'android.widget.ImageView')[1].displayed?
  end
end
