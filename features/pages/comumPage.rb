class Comum < SitePrism::Page
   
  def irAteElemento(elemento)
    page.execute_script('window.scrollBy(0,-10000)')   
    locY = (elemento.native.location[1] - (page.driver.browser.manage.window.size[1]/2))
    page.execute_script('window.scrollBy(0,'+locY.to_s+')')
  end

  def validaCampoMoeda(elemento)
    elemento.text.should match(/^[R][$] [0-9]/)
  end

  def waitForElementToBePresent(selector, path, matcher, timeout)
    r = false
    for i in 0..timeout
      if (selector.upcase == "CSS")
        if matcher.has_css?(path)
          r = true
          return r
        end
      else 
        if (selector.upcase == "XPATH")
          if matcher.has_xpath?(path)
            r = true
            return r
          end
        end
      end
      sleep(1)
    end
    return r
  end

  def exists?(selector, path, matcher, waitTime)
    sleep(waitTime)
    r = false
    if (selector.upcase == "CSS")
      if matcher.has_css?(path)
        r = true
      else
        r = false
      end
    end
    if (selector.upcase == "XPATH")
      if matcher.has_css?(path)
        r = true
      else
        r = false
      end
    end
    return r
  end
end
