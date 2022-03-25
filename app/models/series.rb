# frozen_string_literal: true

class Series < ApplicationRecord
  has_and_belongs_to_many :reviews

  def self.search(term)
    if term.blank?
      all
    else
      where('actor LIKE ?', "%#{term}%")
    end
  end
end
