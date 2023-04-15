# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

brand = Brand.create(name: "Bisquad", description: "Bisquad is a brand of biscuits and snacks manufactured by the French company Biscuits et Snacks de France (BSF).")
brand.logo.attach(io: File.open(Rails.root.join("app/assets/images/brands/4.png")), filename: "4.png")

product = brand.products.create(name: "chocolate", description: "I'm a chocolate.")
product.thumbnail.attach(io: File.open(Rails.root.join("app/assets/images/brands/5.png")), filename: "5.png")
