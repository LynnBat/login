# frozen_string_literal: true

RSpec.feature 'Login page' do
  let(:user)   { User.new }
  let(:router) { Router.new }

  before { create_new_user }

  scenario 'can successfully create an account' do
    expect(page).not_to have_css('#ls-user-signup')
    find('.redesign-container', text: 'My Stuff').click
    expect(page).to have_css('#sign-out')
  end

  scenario 'can successfully log in' do
    logout
    login

    expect(page).not_to have_css('#ls-user-signup')
    find('.redesign-container', text: 'My Stuff').click
    expect(page).to have_css('#sign-out')
  end
end
