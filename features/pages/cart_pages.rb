require "site_prism"


class Cart < SitePrism::Page
  set_url ""

  element :button_add_cart, ".right-block .btn.btn-default:nth-child(1)"

  #cart
  element :shirts_verify_color, "#color_13"
  element :shirts_quantity, "#quantity_wanted"
  element :shirts_size, "#group_1"
  element :text_name_shirts, ".pb-center-column h1"
  element :button_add_cart_buy, "#add_to_cart > button > span"

  # his
  def click_button_add_cart_buy
      button_add_cart_buy.click
  end

end
