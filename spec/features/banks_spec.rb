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