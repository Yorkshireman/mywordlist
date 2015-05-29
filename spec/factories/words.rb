require 'faker'

FactoryGirl.define do
  factory :word do
    title 		{ Faker::Lorem.word }
	description { Faker::Lorem.paragraph }
	user 		nil
  end

  factory :invalid_word, parent: :word do |f|
  	f.title nil 
  end

end
