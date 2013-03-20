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

  # class method that displays all the names
  def self.all_names
    Bank.all.map(&:name).sort.uniq
  end

  def transactions(auth)
    k=[]
    if auth.nil?
      []
    else
        #k = Transaction.where(:to => self.name, user_id:  @auth.id)
        k = Transaction.where(:to => self.name).select! {|trans| trans.user_id = auth.id }
        #objects.sort_by {|obj| obj.attribute}
        k << Transaction.where(:from => self.name).select! {|trans| trans.user_id = auth.id }
        #Transaction.where(:from => self.name)
        k.flatten
    end
  end
  def sorted_trans(auth)
    self.transactions(auth).sort_by {|obj| obj.dt}
  end
  def transactionrecord(auth)
    data =[]
    balance = 0
    self.sorted_trans(auth).each do |trans|
      change = (trans.from == self.name ? -trans.amount.to_f : trans.amount.to_f)
      data << { y: trans.dt, a: balance} #So that you get a point above
      data << { y: trans.dt, a: balance+=change } #get the change
    end
    data
  end

  def ubalance(auth)
    balance = 0
    self.sorted_trans(auth).each do |trans|
      change = (trans.from == self.name ? -trans.amount.to_f : trans.amount.to_f)
      balance += change
    end
    balance
  end
end
