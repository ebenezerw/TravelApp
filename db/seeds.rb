# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Destination.destroy_all
Interest.destroy_all

barcelona = Destination.create(place: 'Barcelona', traveler_name: 'Hamid Z.', social_link: 'facebook.com', start_date: DateTime.strptime('03/19/2017', '%m/%d/%Y'), end_date: DateTime.strptime('03/25/2017', '%m/%d/%Y'), intro: 'Hello! Come with me to Spain')
madrid = Destination.create(place: 'Madrid', traveler_name: 'Hamid Z.', social_link: 'facebook.com', start_date: DateTime.strptime('03/19/2017', '%m/%d/%Y'), end_date: DateTime.strptime('03/25/2017', '%m/%d/%Y'), intro: 'Hello! Come with me to Spain')
seville = Destination.create(place: 'Seville', traveler_name: 'Hamid Z.', social_link: 'facebook.com', start_date: DateTime.strptime('03/19/2017', '%m/%d/%Y'), end_date: DateTime.strptime('03/25/2017', '%m/%d/%Y'), intro: 'Hello! Come with me to Spain')

barcelona.interests.create(traveler_name: 'Ebenezer W', social_link: 'facebook.com', start_date: DateTime.strptime('03/21/2017', '%m/%d/%Y'), end_date: DateTime.strptime('03/30/2017', '%m/%d/%Y'), comment: 'I want to go!!')
barcelona.interests.create(traveler_name: 'Ebenezer W', social_link: 'facebook.com', start_date: DateTime.strptime('03/21/2017', '%m/%d/%Y'), end_date: DateTime.strptime('03/30/2017', '%m/%d/%Y'), comment: 'I want to go!!')
seville.interests.create(traveler_name: 'Ebenezer W', social_link: 'facebook.com', start_date: DateTime.strptime('03/21/2017', '%m/%d/%Y'), end_date: DateTime.strptime('03/30/2017', '%m/%d/%Y'), comment: 'I want to go!!')
