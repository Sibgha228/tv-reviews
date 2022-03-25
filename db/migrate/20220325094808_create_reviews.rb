# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.integer :rating
      t.string :review

      t.timestamps
    end
  end
end
