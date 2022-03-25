# frozen_string_literal: true

class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :name, index: true
      t.string :genre
      t.string :seasons_count
      t.date :first_release_date
      t.string :director
      t.string :actor
      t.string :shoot_location
      t.string :country

      t.timestamps
    end
  end
end
