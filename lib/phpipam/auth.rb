# frozen_string_literal: true
module Auth
  def authenticate(username, password)
    options = {:basic_auth => {:username => username, :password => password}}
    self.class.post("#{app_url}/user/", options)
  end
end
