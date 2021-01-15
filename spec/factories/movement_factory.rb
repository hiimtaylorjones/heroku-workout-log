FactoryBot.define do 

    factory :movement do 
        name { Faker::Lorem.word }
        description { Faker::Lorem.sentence }
    end

end