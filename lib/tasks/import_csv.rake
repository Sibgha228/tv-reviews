require 'csv'

namespace :import_csv do
  desc 'Import TV series to Database'
  task series: :environment do
    series_csv = read_csv('tv_series.csv')
    series_csv.each do |row|
      s = Series.new
      s.name = row['TV Series']
      s.genre = row['Genre']
      s.seasons_count = row['No of seasons']
      s.first_release_date = row['Date of First Release']
      s.director = row['Director']
      s.actor = row['Actor']
      s.shoot_location = row['Shoot location']
      s.country = row['Country']
      s.save
      puts "#{s.name} created"
    end
  end

  desc 'Import Reviews to Database'
  task reviews: :environment do
    reviews_csv = read_csv('reviews.csv')
    reviews_csv.each do |row|
      r = Review.new
      r.user_name = row['User']
      r.rating = row['Stars']
      r.review = row['Review']
      r.save
      assign_reviews(row['TV Series'], r)
      puts "#{r.user_name} created"
    end
  end

  def read_csv(file_name)
    csv_content = File.read(Rails.root.join('lib', 'assets', file_name))
    csv = CSV.parse(csv_content, headers: true, encoding: 'ISO-8859-1')
  end

  def assign_reviews(series_name, review)
    Series.where(name: series_name).each { |s| s.reviews << review }
  end
end
