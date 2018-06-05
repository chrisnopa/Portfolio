module ApplicationHelper
  def login_helper style = " "
    if current_user.is_a?(GuestUser)
      (link_to "Log in", new_user_session_path, class: 'nav-link') +
        "".html_safe +
        (link_to "Registration",new_user_registration_path, class: 'nav-link')
    else
      link_to "Log out", destroy_user_session_path, method: :delete, class: 'nav-link'
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on #{layout_name} layout"
      content_tag(:p, greeting)
    end
  end

  # def copyright_generator
  #   DevcampViewTool::Renderer.copyright 'Christophe Panon'
  # end
end
