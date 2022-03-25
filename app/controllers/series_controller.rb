# frozen_string_literal: true

class SeriesController < ApplicationController
  def index
    @series = Series.search(series_params[:term])
  end

  private

  def series_params
    params.permit(:term)
  end
end
