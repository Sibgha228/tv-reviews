# frozen_string_literal: true

class Review < ApplicationRecord
  has_and_belongs_to_many :series
end
