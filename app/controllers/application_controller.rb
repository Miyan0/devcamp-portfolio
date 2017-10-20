class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # allow devise to whitelist our name field we added.
  include DeviseWhitelist # see concerns/devise_whitelist.rb
  
  # track where user is coming from (twitter, facebook etc)
  # this works by using a special url we send on social media that
  # when clicked includes a query parameter we're gonna track
  # ex:
  #     mycompany.com/about/?q=twitter
  include SetSource # see concerns/set_source
  
  # null object pattern for current_user provided by devise
  include CurrentUserConcern # see concerns/current_user_concern.rb

end
