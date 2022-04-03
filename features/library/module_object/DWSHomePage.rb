module DWS_Home_Page
  def register_btn
    $browser.link(text: "Register")
  end
  def apparelAndShoes_btn
    $browser.div(class: "header-menu").a(href: "/apparel-shoes")
  end
end