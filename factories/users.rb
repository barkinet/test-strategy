FactoryGirl.define do
  factory :user do
    first_name 'Joe'
    number_of_widgets 0
    has_sprockets false
    association :record, factory: :record
  end
end
