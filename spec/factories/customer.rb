FactoryGirl.define  do
  factory :customer, class: Customer do
    first_name {"foo"}
    last_name {"foo"}
    email {"foo@gmail.com"}
    contact_no {"123214234"}

    initialize_with {
      new(first_name, last_name, email, contact_no)
    }
  end

end