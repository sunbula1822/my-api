class PagesController < ApplicationController
  def home
    @application = Doorkeeper::Application.find_by(name: 'Client')

    @application = {
      client_id: @application.uid,
      client_secret: @application.secret
    }
  end
  

end
