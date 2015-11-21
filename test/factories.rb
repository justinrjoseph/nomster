FactoryGirl.define do

  factory :user do
    sequence :email do |n|
      "test#{n}@example.com"
    end
    password 'password'
    password_confirmation 'password'
  end

  factory :place do
    name 'Yanni\'s Greek Grill'
    description 'Compact hideaway for homestyle Greek cuisine such as gyros and housemade tzatziki.'
    address 'Corporate Exchange Plaza, 6196 Cleveland Ave, Columbus, OH 43231'
    latitude(40.100105)
    longitude(-82.949792)
    association :user
  end

  factory :comment do
    message 'A test comment.'
    rating '5_stars'
    association :user
    association :place
  end

end