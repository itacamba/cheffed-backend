# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
Dish.destroy_all
Review.destroy_all


#Customers
u1 = User.create(name: "Lola", email: "lola@mail.com", password: "pass", about: "I am a human being" )
u2 = User.create(name: "Mary", email: "mary@mail.com", password: "pass", about: "I am a human being" )
#Chefs
c1 = User.create(name: "Mark Zuckerberg", email: "mark@mail.com", password: "pass", about: "I am a human being", is_chef: true , img: "https://stvp-static-prod.s3.amazonaws.com/uploads/sites/2/2017/10/Zuckerberg_Mark_eCorner_Contributor_Cropped.jpg")
c2 = User.create(name: "Jeff Bezos", email: "jeff@mail.com", password: "pass", about: "I will make sure your package gets home on time, I mean food.", is_chef: true , img: "https://techstory.in/wp-content/uploads/2015/04/Jeff-Bezos1.jpg")
c3 = User.create(name: "Beza Sirak", email: "beza@mail.com", password: "pass", about: "I make a killer Kitfo" ,img: "https://ca.slack-edge.com/T02MD9XTF-URUT7DR3P-ecbb7719005a-512",is_chef: true)
c4 = User.create(name: "Bill Gates", email: "bill@mail.com", password: "pass", about: "I can also make real food, not only virtual", is_chef: true, img: "https://www.evoke.org/-/media/Images/Evoke/Contributors/BillGates/BillGates_Headshot.ashx?rev=7e39f3afbe07407a8d79b25ff833ba66")
c5 = User.create(name: "Elon Musk", email: "elon@mail.com", password: "pass", about: "Are you ready to try food out of this world?", is_chef: true, img:"https://www.cbj.ca/wp-content/uploads/2019/05/Elon-Musk-twitter.jpg")
c6 = User.create(name: "Junior Az", email: "jun@mail.com", password: "pass", about: "What's cooking good looking?", is_chef: true, img: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/103635320_3200894973307689_9091135155604094267_n.jpg?_nc_cat=106&_nc_sid=8bfeb9&_nc_ohc=O2dAZJTfvSkAX8uEIF_&_nc_ht=scontent-iad3-1.xx&oh=a140231ede3e0a15822525d287e89fea&oe=5F0997FE")

#Dishes
d1 = Dish.create(name: "Kitfo", user: c3 , cuisine: "Ethiopian", description: "Delicious food so you can eat it and then eat some more.", img: "https://i.pinimg.com/originals/a9/c1/82/a9c182c0221388027b13e91853bd4d35.png")
d2 = Dish.create(name: "Ravioli con Carne", user: c3 , cuisine: "Italian", description:"Delicious food so you can eat it and then eat some more." )
d3 = Dish.create(name: "Sushi", user: c2 , cuisine: "Asian", description: "Delicious food so you can eat it and then eat some more.")
d4 = Dish.create(name: "Arancini con Queso", user: c1 , cuisine: "French", description:"Delicious food so you can eat it and then eat some more." )
d5 = Dish.create(name: "Doro Wet", user: c2 , cuisine: "African", description: "Delicious food so you can eat it and then eat some more.")
d6 = Dish.create(name: "Greasy Hamburger", user: c1 , cuisine: "American", description: "Delicious food so you can eat it and then eat some more.")


#Events / date format (yyyy,mm,dd)

e1 = Event.create(party_size: 2, chef: c1, customer_id: u1.id, date: Date.new(2009,10,9) , ocassion: "Anniversary", dish_name: "Arancini con Queso")
e2 = Event.create(party_size: 4, chef: c3, customer_id: u2.id, date: Date.new(2009,10,20) , ocassion: "Birthday", dish_name: "Greasy Hamburger")
e3 = Event.create(party_size: 3, chef: c3, customer_id: u1.id, date: Date.new(2009,11,19) , ocassion: "Baptism", dish_name: "Sushi")


#Reviews 

r1 = Review.create(title: "Too Expensive", content: "Food was okay", date: Date.new(2020,9,6), rating: 3, event_id: e3.id, user_id: u1.id)
r2 = Review.create(title: "Chef Beza was excellent", content: "I loved it", date: Date.new(2020,06,1),rating: 4, event_id: e2.id, user_id: u2.id )
r3 = Review.create(title: "My Second Review", content: "Food Delicious", date: Date.new(2020,06,1),rating: 5, event_id: e2.id, user_id: c3.id )
r5 = Review.create(title: "Not such a clean kitchen", content: "The kitchen was a mess, no tools were provided", date: Date.new(2020,06,1),rating: 5, event_id: e3.id, user_id: c3.id )