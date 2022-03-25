# frozen_string_literal: true

class CreateJoinTableSeriesRevuews < ActiveRecord::Migration[6.0]
  def change
    create_join_table :series, :reviews do |t|
      t.index %i[series_id review_id]
    end
  end
end
