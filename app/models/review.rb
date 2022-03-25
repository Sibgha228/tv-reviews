# frozen_string_literal: true

class Review < ApplicationRecord
  has_and_belongs_to_many :series
  validates_presence_of :user_name, :rating, :review
end
