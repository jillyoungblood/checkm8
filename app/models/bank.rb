# == Schema Information
#
# Table name: banks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bank < ActiveRecord::Base
  attr_accessible :name
  def withdrawals
    Transaction.where(:from => self.name)
  end
  def deposits
    Transaction.where(:to => self.name)
  end
  def transactions
    k=[]
    k = Transaction.where(:to => self.name)
    k << Transaction.where(:from => self.name)
    k.flatten
  end
  def sorted_trans
    self.transactions.sort_by {|obj| obj.dt}
  end
  def transactionrecord
    data =[]
    balance = 0
    self.sorted_trans.each do |trans|
      change = (trans.from == self.name ? -trans.amount.to_f : trans.amount.to_f)
      data << { y: trans.dt, a: balance} #So that you get a point above
      data << { y: trans.dt, a: balance+=change } #get the change
    end
    data
  end
end
