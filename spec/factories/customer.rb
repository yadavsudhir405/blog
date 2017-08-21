FactoryGirl.define do
  factory :customer, class: User do
    first_name "foe"
    last_name "joe"
    email "foe@gmail.com"
    contact_no "8374858593"
  end
end