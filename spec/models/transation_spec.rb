require 'spec_helper'

describe Transaction do
  let(:transaction) {FactoryGirl.create(:transaction)}
  describe 'Transaction object' do
      it 'creates a new Transaction object' do
        transation = Transaction.new
        expect(transaction).to be_an_instance_of(Transaction)
      end
    it 'creates a Transaction record' do
      expect(transaction.amount).to eq 100.0
      expect(transaction.from).to eq "Bank of America"
      expect(transaction.to).to eq 'Chase'
      expect(transaction.dt).to eq '3/20/2013'
    end
  end
  describe '#user' do
    it 'has a user' do
      transaction.user = User.create(:name=>'bob',:email=>'bob@gmail.com',:password=>'bob',:password_confirmation=>'bob')
      expect(transaction.user).to be_an_instance_of(User)
    end
  end
end