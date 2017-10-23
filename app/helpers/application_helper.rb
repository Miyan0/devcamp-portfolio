module ApplicationHelper
  def login_helper
     if current_user.is_a?(GuestUser) 
      (link_to "Register", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
     else 
      link_to "Logout", destroy_user_session_path, method: :delete       
     end 
  end

  # to test this,
  # open an incongnito window and add a ?q=xxx to the url
  # ex: localhost:3000/?q=facebook
  # this is used in:
  #   layout/blog.html.erb
  #   layout/portfolio.html.erb
  #   layout/application.html.erb
  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    Miyan0ViewTool::Renderer.copyright 'Andre Masse', 'All rights reserved'
  end
end
