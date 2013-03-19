require 'spec_helper'

## Should show a bank
## Should show two banks
## Should display an amount
## should display a Transfer button


describe 'Transactions' do
  let(:transaction) {FactoryGirl.create(:amount=>100.0, :from=>'BOA', :to=>'Chase', :dt=>'4/1/2013')}

  describe 'GET /transaction/new' do
    it 'displays the transaction form' do
      visit root_path
      click_link('New Transfer')
      page.should have_text('BOA')
      page.should have_text('Chase')

    end
  end
end