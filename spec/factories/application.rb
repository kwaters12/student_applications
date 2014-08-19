FactoryGirl.define do 
  factory :application do    
    association :student,     :factory => :student
    score { Faker::Number.number(2) }
  end 
end

