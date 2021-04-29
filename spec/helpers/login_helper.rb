# frozen_string_literal: true

module LoginHelper
  def fill_inputs
    fill_in 'Full name', with: user.name if page.has_css?('#signup-fullName-input')
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
  end

  def create_new_user
    visit Router.new.signup_path
    fill_inputs
    click_button 'Sign Up'
  end

  def login
    visit Router.new.login_path
    fill_inputs
    click_button 'Sign In'
  end

  def logout
    find('.redesign-container', text: 'My Stuff').click
    click_on 'Sign Out'
  end
end
