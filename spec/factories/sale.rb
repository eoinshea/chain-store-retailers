FactoryGirl.define do
  factory :sale do
    jumpers Faker::Number.between(1, 10)
    jackets Faker::Number.between(1, 10)
    scarves Faker::Number.between(1, 10)
    belts Faker::Number.between(1, 10)
    shoes Faker::Number.between(1, 10)
  end
end