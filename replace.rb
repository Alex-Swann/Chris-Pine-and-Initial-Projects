  def domain_name(url)
    x = url.gsub(/\./, " ").gsub(/\/\//, " ").split(" ")
    print x[1]
  end






domain_name("http://github.com/carbonfive/raygun")