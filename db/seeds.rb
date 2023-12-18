# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
employee =Employee.new(
 first_name: "Abdul",
 middle_name:"",
 last_name:"Barek",
 designation: "SPO-IT",
 plase_of_posting: "DODS",
 address: "48, Motijheel",
 bank_id:"0991",
 email: "barek1@gmail.com",
 contact_no: "0170303038"
)
employee =Employee.new(
 first_name: "Palash",
 middle_name:"Kumar",
 last_name:"Hazra",
 designation: "PO-IT",
 plase_of_posting: "DODS",
 address: "48, Motijheel",
 bank_id:"02071",
 email: "hazra1@gmail.com",
 contact_no: "013578"
)
student =Student.new(name: "palash",roll_no: "01", class_name: "11")
product =Product.new(name: "HP", serial_no: "WXOX", price: 100)