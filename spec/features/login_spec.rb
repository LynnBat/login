# frozen_string_literal: true

RSpec.feature 'Login page' do
  let(:user)   { User.new }
  let(:router) { Router.new }

  scenario 'can successfully create an account' do
    visit router.signup_path
    fill_in 'Full name', with: user.name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign Up'

    expect(page).not_to have_css('#ls-user-signup')
    find('.redesign-container', text: 'My Stuff').click
    expect(page).to have_css('#sign-out')
  end

  scenario 'can successfully log in' do
    create_new_user
    logout
    visit router.login_path
    fill_inputs
    click_button 'Sign In'

    expect(page).not_to have_css('#ls-user-signup')
    find('.redesign-container', text: 'My Stuff').click
    expect(page).to have_css('#sign-out')
  end
end
