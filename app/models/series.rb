# frozen_string_literal: true

class Series < ApplicationRecord
  has_and_belongs_to_many :reviews
end
