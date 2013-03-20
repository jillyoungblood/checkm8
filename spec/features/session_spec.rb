require 'spec_helper'

describe 'Session' do
  describe 'GET /' do
    it 'displays login link' do
      # visit root_path
      # page.should have_link('Login')
    end
  end
  describe 'GET /login' do
    it 'displays the login form', :js => true do
      # visit root_path
      # click_link('Login')
      # page.should have_button('Sign In')
    end
      it 'removes the login form when the cancel button is clicked', :js => true do
      # visit root_path
      # click_link('Login')
      # click_button('Cancel')
      # page.should_not have_button('Sign In')
      # page.should_not have_button('Cancel')
    end
  end
  describe 'POST /login' do
    let(:user) {FactoryGirl.create(:user)}
    let(:bank) {FactoryGirl.create(:bank)}
    it 'logs the user into the system if credentials are correct' do
      # visit root_path
      # click_link('Login')
      # fill_in('Email', :with => 'bob@gmail.com')
      # fill_in('Password', :with => 'a')
      # click_button('Sign In')
      # page.should_not have_button('Sign In')
      # expect(page.has_link?(user.name)).to be true
      # visit root_path
      # page.should_not have_button('Sign In')
      # expect(page.has_link?(user.name)).to be true
      # expect(page.has_link?(bank.name)).to be true
    end
    it 'does not log the user into the system if credentials are incorrect' do
      # visit root_path
      # click_link('Login')
      # fill_in('Email', :with => 'bob@gmail.com')
      # fill_in('Password', :with => 'b')
      # click_button('Sign In')
      # page.should have_button('Sign In')
    end
  end
  describe 'DELETE /login' do
    it 'logs the user off the system', :js => true do
      # let(:user) {FactoryGirl.create(:user)}
      # let(:bank) {FactoryGirl.create(:bank)}
      # visit root_path
      # click_link('Login')
      # fill_in('Email', :with => 'bob@gmail.com')
      # fill_in('Password', :with => 'a')
      # click_button('Sign In')
      # click_link(user.name)
      # expect(page.has_link?(user.name)).to be false
      # expect(page.has_link?(bank.name)).to be false
    end
  end
end