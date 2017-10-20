class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # allow devise to whitelist our name field we added.
  include DeviseWhitelist # see concerns/devise_whitelist.rb

end
