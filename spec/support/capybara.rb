%i(chrome firefox).each do |browser|
  Capybara.register_driver :"selenium_#{browser}" do |app|
    Capybara::Selenium::Driver.new(app, browser: browser)
  end
  Capybara::Screenshot.register_driver :"selenium_#{browser}" do |driver, path|
    driver.browser.save_screenshot(path)
  end
end

Capybara.javascript_driver = :poltergeist
