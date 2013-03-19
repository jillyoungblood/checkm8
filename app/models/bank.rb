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
  def withdraws
    Transaction.where(:from => self.name)
  end
  def deposits
    Transaction.where(:to => self.name)
  end
end
