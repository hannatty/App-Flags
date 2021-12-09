class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Cookie Test"
  end

end
