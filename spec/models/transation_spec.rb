require 'spec_helper'

describe Transaction do
  let(:transaction) {FactoryGirl.create(:amount=>100.0, :from=>'BOA', :to=>'Chase', :dt=>'4/1/2013')}
  describe 'Transaction object' do
  it 'creates a new Transaction object' do
    transation = Transaction.new
    expect(transaction).to be_an_instance_of(Transaction)
  end
  it 'creates a Transaction record'
    expect(transaction.amount).to eq 100.0
    expect(transaction.from).to eq 'BOA'
    expect(transaction.to).to eq 'Chase'
    expect(transaction.dt).to eq '4/1/2013'
  end
  describe '#user' do
    it 'has a user' do
      transaction.user = User.create(:name=>'bob',:email=>'bob@gmail.com',:password=>'bob',:password_confirmation=>'bob')
      expect(transaction.user).to be_an_instance_of(User)
    end
  end
end