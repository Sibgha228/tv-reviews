# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_325_094_905) do
  create_table 'reviews', force: :cascade do |t|
    t.string 'user_name'
    t.integer 'rating'
    t.string 'review'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'reviews_series', id: false, force: :cascade do |t|
    t.integer 'series_id', null: false
    t.integer 'review_id', null: false
    t.index %w[series_id review_id], name: 'index_reviews_series_on_series_id_and_review_id'
  end

  create_table 'series', force: :cascade do |t|
    t.string 'name'
    t.string 'genre'
    t.string 'seasons_count'
    t.date 'first_release_date'
    t.string 'director'
    t.string 'actor'
    t.string 'shoot_location'
    t.string 'country'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['name'], name: 'index_series_on_name'
  end
end
