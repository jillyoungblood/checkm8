FactoryGirl.define do
  factory :user, :class => User do
    name                  'Bob'
    email                 'bob@gmail.com'
    password              'a'
    password_confirmation 'a'
  end
end