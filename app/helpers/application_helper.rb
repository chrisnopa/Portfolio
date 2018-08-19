
module ApplicationHelper
  def login_helper style = " "
    if current_user.is_a?(GuestUser)
      (link_to "Log in", new_user_session_path, class: 'nav-link text-white no-padding') +
      "".html_safe +
      (link_to "Registration",new_user_registration_path, class: 'nav-link text-white no-padding')
    else
      link_to "Log out", destroy_user_session_path, method: :delete, class: 'nav-link text-white no-padding'
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on #{layout_name} layout"
      content_tag(:p, greeting)
    end
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
    ]
  end

  def navbar_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title ="Christophe Panon Portfolio", sticky:false, time:1000)
  end

end
