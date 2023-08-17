# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Read names from a csv file line by line
require "csv"
CSV.read("db/name_seed.csv", headers: true).each do |row|
  Name.find_or_create_by(
    name: row["Child's First Name"].titleize,
    gender: row["Gender"].downcase,
  )
end

puts "Names now contains #{Name.count} records"
puts "Gender distribution:  #{Name.all.pluck(:gender).tally}"
