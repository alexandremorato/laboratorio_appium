Before do |scenario|
  $driver.start_driver
  @el_categoria = ElementosPageCategoria.new
  @el_idiomas = ElementosPageIdiomas.new
  @el_produtos = ElementosPageProdutos.new
end

After do |scenario|
  $driver.driver_quit
end

After do |scenario|
  if scenario.failed?
    unless File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end

    time_stamp = Time.now.strftime("%d-%m-%Y_%H.%M.%S")
    screenshot_name = "#{time_stamp}.png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
    end
end
