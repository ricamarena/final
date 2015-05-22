puts "Deleting..."
Project.delete_all
User.delete_all
Owner.delete_all
Investment.delete_all

puts "Creating Owners..."
altaventures = Owner.create(name: "Alta Ventures", summary:"alta ventures is a firm", rating: 4)
fivere = Owner.create(name: "5 RE", summary:"5re is a firm", rating: 5)
lp = Owner.create(name: "Leisure Partners", summary:"LP is a firm", rating: 6)
hydepark = Owner.create(name: "Hyde Park Venture Partners", summary:"Hyde Park is a firm", rating: 7)
bjb = Owner.create(name: "BJB", summary:"Crappy Management", rating: 4)

puts "Creating Projects..."
house1 = Project.create(name: "Beach House", location: "Miami", image:"beach.jpg", summary: "On the Beach", owner_id: altaventures.id, raised: "0", goal: "5000")
house2 = Project.create(name: "Country House", location: "Milwakee", image:"country.jpg", summary: "On the Country", owner_id: fivere.id, raised: "0", goal: "4000" )
house3 = Project.create(name: "City House", location: "Chicago", image:"city.jpg", summary: "House on the City", owner_id: lp.id, raised: "0", goal: "3000")
house4 = Project.create(name: "Apartment", location: "New York", image:"apartment.jpg", summary: "Big Apartment", owner_id: hydepark.id, raised: "0", goal: "2000")
house5 = Project.create(name: "Condo", location: "Evanston", image:"condo.jpg", summary: "Small Condo", owner_id: bjb.id, raised: "0", goal: "1000")

puts "Creating Users..."
john = User.create(name: "John", username: "ke5", bio:"I am Doe")
doe = User.create(name: "Doe", username: "ke4",  bio:"I am Doe")
smith = User.create(name: "Smith", username: "ke3",  bio:"I am Smith")
jane = User.create(name: "Jane", username: "ke2",  bio:"I am Jane")
sparta = User.create(name: "Sparta", username: "ke1",  bio:"I am Sparta")
kellogg = User.create(name: "Kellogg", username: "ke0",  bio:"I am Kellogg")



puts "Creating Investments..."
Investment.create(project_id: house1.id, user_id: john.id, amount: 300)
Investment.create(project_id: house3.id, user_id: doe.id, amount: 500)
Investment.create(project_id: house3.id, user_id: sparta.id, amount: 1000)
	