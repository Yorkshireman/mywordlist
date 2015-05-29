FactoryGirl.define do
  factory :category do
    title { Faker::Lorem.word }
  end

  factory :invalid_category, parent: :category do
  	title nil
  end

end
