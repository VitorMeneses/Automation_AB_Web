require "site_prism"


class Summary < SitePrism::Page
  set_url ""

  element :text_value_buy, :id, "total_price"
  element :button_proceed_checkout_cart, "#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a"
  element :button_next_checkout, "#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium > span"

  def get_value_buy
      text_value_buy.text
  end

  def click_button_proceed_checkout_cart
      button_proceed_checkout_cart.click
  end

  def click_button_proceed_checkout_cart_auth
      button_next_checkout.click
  end

end
