FactoryBot.define do 
    factory :workout do 
        title { Faker::Lorem.word }
        classification { "Workout" }
        condition { "For Time" }
        notes { Faker::Lorem.paragraph }
    end
end