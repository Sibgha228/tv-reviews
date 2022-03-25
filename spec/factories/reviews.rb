# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    user_name { 'MyString' }
    rating { 1 }
    review { 'MyString' }
  end
end
