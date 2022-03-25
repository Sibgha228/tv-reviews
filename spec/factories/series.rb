# frozen_string_literal: true

FactoryBot.define do
  factory :series do
    name { 'MyString' }
    genre { 'MyString' }
    seasons_count { 'MyString' }
    first_release_date { '2022-03-25' }
    director { 'MyString' }
    actor { 'MyString' }
    shoot_location { 'MyString' }
    country { 'MyString' }
    factory :series_with_reviews do
      after(:build) { |series| series.reviews = [create(:review)] }
    end
  end
end
