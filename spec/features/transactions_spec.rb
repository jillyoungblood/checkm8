require 'spec_helper'

## Should show a bank
## Should show two banks
## Should display an amount
## should display a Transfer button


describe 'Transactions' do
  let(:transaction) {FactoryGirl.create(:transaction)}

  describe 'GET /transaction/new' do
    it 'displays the transaction form', :js=>true do
      bank = Bank.create(:name=>'Wachovia')
      visit bank_path(bank)
      click_link('Transfer')
      page.should have_link('Cancel')
      page.should have_button('Create Transaction')
    end
  end

  describe 'POST /transactions' do
    it 'saves a Transaction in the db', :js=>true do
      bank = Bank.create(:name=>'Bank of America')
      visit bank_path(bank)
      click_link('Transfer')
      # select('option',:from=>'select box')
      page.select(bank.name, :from=>'transaction_from')
      page.select(bank.name, :from=>'transaction_to')
      fill_in('transaction_amount',:with=>transaction.amount)
      click_button('Create Transaction')
      expect(transaction.id).to_not eq nil
    end

    it 'does NOT save a Transaction in the db if amount is an alphabetical character', :js=>true  do
      bank = Bank.create(:name=>'Bank of America')
      visit bank_path(bank)
      # select('option',:from=>'select box')
      click_link('Transfer')
      page.select(bank.name,:from=>'transaction_from')
      page.select(bank.name,:from=>'transaction_to')
      fill_in('transaction_amount',:with=>'a')
      click_button('Create Transaction')
      expect(transaction.id).to eq nil
    end

    # it 'does NOT save a Transaction in the db if amount is 0' , :js=>true do
    #   bank = Bank.create(:name=>'Bank of America')
    #   visit bank_path(bank)
    #   # select('option',:from=>'select box')
    #   page.select(transaction.from,:from=>'From')
    #   page.select(transaction.to,:from=>'To')
    #   fill_in('amount',0)
    #   expect(transaction.id).to eq nil
    # end
  end
end