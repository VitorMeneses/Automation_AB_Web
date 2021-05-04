require "site_prism"


class Initial < SitePrism::Page

    set_url  "/index.php"

    element :link_sign, ".login"
    element :link_logout, ".logout"
    element :button_search, "#searchbox > button"
    element :search_itens, '#search_query_top'

    def click_sign
      link_sign.click
    end

    def do_logout
      link_logout.click
    end

    def click_search
        search_itens.click
        search_itens.send_keys("Faded Short Sleeve")
        button_search.click
    end
end
