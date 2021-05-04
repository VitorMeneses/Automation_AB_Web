require "site_prism"


class SummerDresses < SitePrism::Page
  set_url ""

  element :shirts_color_orange, "#color_13"
  element :input_search, "#search_query_top"
  element :button_search, "#submit_search"
  element :button_more, "#center_column > ul > li > div > div.left-block > div > a.product_img_link > img"

  def select_color_shirts_orange
    button_more.click
    shirts_color_orange.click
  end

end
