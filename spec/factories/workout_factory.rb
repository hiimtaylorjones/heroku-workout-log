FactoryBot.define do 

    factory :workout do 
        name { Faker::Lorem.word }
        condition { "For Time" }
        time { "#{rand(10)}:#{rand(60)}" }
        rounds { rand(5) + 3 }
    end

end