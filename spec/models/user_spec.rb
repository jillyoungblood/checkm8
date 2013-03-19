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
  # describe '#transactions' do
  #   it 'has transactions' do

  #   end
  # end
end