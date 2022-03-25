# frozen_string_literal: true

class SeriesController < ApplicationController
  def index
    @series = Series.all
  end
end
