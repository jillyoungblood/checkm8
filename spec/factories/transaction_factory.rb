FactoryGirl.define do
  factory :transaction, :class=>Transaction do
    amount  '100.00'
    from    'Bank of America'
    to      'Chase'
    dt      '3/20/2013'
  end
end