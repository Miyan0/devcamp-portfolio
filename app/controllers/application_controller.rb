class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # allow devise to whitelist our name field we added.
  include DeviseWhitelist # see concerns/devise_whitelist.rb

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end

end
