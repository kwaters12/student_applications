FactoryGirl.define do 
  factory :student do    
    name { Faker::Name.name }
    address { Faker::Address.street_address }
  end 
end

