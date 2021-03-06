module ApplicationHelper
  def login_helper

    if current_user.is_a?(GuestUser) 
       ( link_to"register", new_user_registration_path ) +
     "<br>".html_safe +
     (link_to"login",new_user_session_path )
     
     else 
     link_to"logout",destroy_user_session_path, method: :delete 
    end
  end 
  
   def source_helper(layout_name)
     if session[:source] 
       greeting = "Thanks for vitsiting me from #{session[:source]} and you are on the #{layout_name} "
       content_tag(:p, greeting, class: "source-greeting")
     end end
     def copyright_generator
       @copyright=AppViewTool::Renderer.copyright 'Unknown Subject','All rights reserved'  
     end
end
