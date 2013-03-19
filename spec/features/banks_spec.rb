require 'spec_helper'

describe 'Banks' do

  describe 'GET /' do
    it 'displays a list of banks' do
      bank1 = Bank.create(name: 'Bank of America')
      bank2 = Bank.create(name: 'HSBC')
      bank3 = Bank.create(name: 'Citibank')
      visit root_path
      page.should have_link('Bank of America')
      page.should have_link('HSBC')
      page.should have_link('Citibank')
      end
    end

  describe 'POST /banks' do
    it 'banks should appear alphabetically', :js => true do
      visit root_path
      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Bank of America')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'HSBC')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Citibank')
    end
  end

  describe 'GET /banks/1' do
    it 'shows data and graph buttons for withdrawals and deposits' do
      bank = FactoryGirl.create(:bank)
      visit bank_path(bank)
      page.should have_text('Deposits')
      page.should have_text('Withdrawals')
      page.should have_css('#deposits button', :text => 'Data' )
      page.should have_css('#deposits button', :text => 'Graph' )
      page.should have_css('#withdrawals button', :text => 'Data' )
      page.should have_css('#withdrawals button', :text => 'Graph' )
    end
  end

  describe 'Deposits data button' do
    it 'shows deposit data when that button is clicked' do
      bank = FactoryGirl.create(:bank)
      ['3/01/2013', '3/05/2013']
      visit bank_path(bank)
    end
  end
end