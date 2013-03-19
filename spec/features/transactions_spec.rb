require 'spec_helper'

## Should show a bank
## Should show two banks
## Should display an amount
## should display a Transfer button


describe 'Transactions' do
  let(:transaction) {FactoryGirl.create(:transaction)}

  describe 'GET /transaction/new' do
    it 'displays the transaction form', :js=>true do
      visit root_path
      click_link('New Transfer')
      page.should have_link('Cancel')
      page.should have_button('Create Transfer')
    end
  end

  describe 'POST /transactions' do
    it 'saves a Transaction in the db', :js=>true do
      visit root_path
      # select('option',:from=>'select box')
      select(transaction.from,:from=>'from')
      select(transaction.to,:from=>'to')
      fill_in('amount',transaction.amount)
      click_button('Create Transfer')
      expect(transaction.id).to_not eq nil
    end

    it 'does NOT save a Transaction in the db if amount is an alphabetical character' do
      visit root_path
      # select('option',:from=>'select box')
      select(transaction.from,:from=>'from')
      select(transaction.to,:from=>'to')
      fill_in('amount','a')
      expect(transaction.id).to eq nil
    end

    it 'does NOT save a Transaction in the db if amount is 0' do
      visit root_path
      # select('option',:from=>'select box')
      select(transaction.from,:from=>'from')
      select(transaction.to,:from=>'to')
      fill_in('amount',0)
      expect(transaction.id).to eq nil
    end
  end
end