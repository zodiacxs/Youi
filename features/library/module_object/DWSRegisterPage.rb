module DWS_Register_Page
  def firstNameField
    $browser.input(name: "FirstName")
  end
  def lastNameField
    $browser.input(name: "LastName")
  end
  def emailField
    $browser.input(name: "Email")
  end
  def passwordField
    $browser.input(name: "Password")
  end
  def passwordFieldWarning
    $browser.span(for: "Password")
  end
end