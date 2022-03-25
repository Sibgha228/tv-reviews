# frozen_string_literal: true

class Series < ApplicationRecord
  has_and_belongs_to_many :reviews
  validates_presence_of :name, :genre, :seasons_count, :first_release_date, :director, :actor, :shoot_location, :country

  def self.search(term)
    if term.blank?
      all
    else
      where('actor LIKE ?', "%#{term}%")
    end
  end
end
