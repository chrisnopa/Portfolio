module ApplicationHelper
  def login_helper
   if current_user.is_a?(User)
     link_to "Log out", destroy_user_session_path, method: :delete
   else
     (link_to "Log in", new_user_session_path) +
     "<br>".html_safe +
     (link_to "Registration",new_user_registration_path)
   end
 end

 def source_helper(layout_name)
  if session[:source]
     greeting = "Thanks for visiting me from #{session[:source]} and you are on #{layout_name} layout"
     content_tag(:p, greeting)
   end
 end
end
