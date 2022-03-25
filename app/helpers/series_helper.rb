# frozen_string_literal: true

module SeriesHelper
  def calculate_average_rating(series)
    series.reviews.average(:rating).to_i
  end
end
