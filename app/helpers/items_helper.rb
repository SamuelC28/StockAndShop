module ItemsHelper

    def author_own(item)
        logged_in? && current_user.admin
    end
   
        
    def empty(cart)
        if session[:cart]
            session[:cart].clear
        end
    end
end
