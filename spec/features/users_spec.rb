require 'spec_helper'

describe 'Users' do
  describe 'GET /' do
    it 'displays New Account link' do
      visit root_path
      page.should have_link('New Account')
    end
  end
  describe 'GET /users/new' do
    it 'displays the new user form', :js => true do
      # visit root_path
      # click_link('New Account')
      # page.should have_button('Create Account')
    end
    it 'removes the new user form when the cancel button is clicked', :js => true do
    #   visit root_path
    #   click_link('New Account')
    #   click_button('Cancel')
    #   page.should_not have_button('Create Account')
    #   page.should_not have_button('Cancel')
    end
  end
  describe 'POST /users' do
    it 'creates a new user account' do
      # visit root_path
      # click_link('New Account')
      # fill_in('Name', :with => 'Bob')
      # fill_in('Email', :with => 'bob@gmail.com')
      # fill_in('Password', :with => 'a')
      # fill_in('Password Confirmation', :with => 'a')
      # click_button('Create Account')
      # page.should_not have_button('Create Account')
      # expect(User.first.name).to eq 'Bob'
    end
  end
end