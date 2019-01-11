FactoryBot.define do 

    factory :movement do 
        name { Faker::Lorem.word }
        description { Faker::Lorem.sentence }
        amount { rand(20).to_s }
        weight { rand(80).to_s }
    end

end