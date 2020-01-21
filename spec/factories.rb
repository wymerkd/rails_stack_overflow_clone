FactoryBot.define do
  factory(:question) do
    question_content {'Knit the sock monkey?'}
  end
  factory(:user)do
  email {'whatever@.com'}
  password {123}
end
end
