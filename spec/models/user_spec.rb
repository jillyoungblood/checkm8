# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  describe '.create' do
    it 'has an id' do
      user = User.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.id).to_not be nil
    end
    it 'fails validation if name and email are blank' do
      user = User.create
      expect(user.id).to be nil
    end
  end
  describe '#transactions' do
    it 'has transactions' do
      transaction = FactoryGirl.create(:transaction)
      user = FactoryGirl.create(:user)
      user.transactions << transaction
      expect(user.transactions.first).to be_an_instance_of(Transaction)
    end
  end
end
