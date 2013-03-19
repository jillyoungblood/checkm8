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

FactoryGirl.define do
  factory :transaction, :class=>Transaction do
    amount  '100.00'
    from    'Bank of America'
    to      'Chase'
    dt      '3/20/2013'
  end
end
