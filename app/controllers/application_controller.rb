class ApplicationController < ActionController::Base
    before_action :set_locale

    #Se existir parametro locale, cookie[:locale] recebe seu valor.
    def set_locale
        if params[:locale] 
            cookies[:locale] = params[:locale]  
        end
        
        #Se 
        #if cookies[:locale]
         #   if I18n.locale != cookies[:locale]
          #      I18n.locale = cookies[:locale]
           # end
        #end

        if I18n.locale != cookies[:locale]
            I18n.locale = cookies[:locale]
        end
             
    end
end
