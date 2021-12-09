module ApplicationHelper
    def br_date(us_date)
        us_date.strftime("%d/%m/%Y")
    end

    def locale
        I18n.locale == :en ? " English - USA" :  "Português do Brasil"
    end
    
end
