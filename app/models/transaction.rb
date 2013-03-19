# == Schema Information
#
# Table name: transactions
#
#  id         :integer          not null, primary key
#  amount     :decimal(, )
#  from       :string(255)
#  to         :string(255)
#  dt         :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Transaction < ActiveRecord::Base
  attr_accessible :amount, :from, :to,:user_id, :dt
  belongs_to :user
end
