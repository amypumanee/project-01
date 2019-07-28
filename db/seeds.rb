User.destroy_all
puts "Creating users"
u1 = User.create :email => 'amy@gmail.com'
u2 = User.create :email => 'viva@gmail.com'

Event.destroy_all
puts "Creating events"
e1 = Event.create(:title => 'Sydney Cherry Blossom Festival 2019', :date => '17/08/19 - 25/08/19', :image => 'https://media.timeout.com/images/105483190/1372/772/image.jpg', :address => 'Auburn Botanic Gardens', :info => "To celebrate the start of cherry blossom season, Auburn Botanic Gardens runs a nine-day festival of ticketed Hanami (‘flower viewing’) sessions and midweek tours so you can wander under the canopy of pink flowers in the Japanese-style gardens.")

e2 = Event.create(:title => 'Colorfest Sydney', :date => '31/08/19', :image => 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F54027535%2F215410162411%2F1%2Foriginal.20181217-055730?w=800&auto=compress&rect=0%2C164%2C1618%2C809&s=747f7a810d8cf0728ad7942fd2b942ad', :address => '450 Mona Vale Rd, St Ives, NSW 2075', :info => "Come and Enjoy a Fun Filled Day. One Massive Festival with Non Stop Music & Dance.This is one of kind Colour festival that will fuze all the elements of EDM, Commercial with touch of RNB Music, Pop, House. Live performances from the City’s Best DJ’s. Great way to spend time with the family as you go crazy in the paint and let your true colours show. You don’t want to miss this family friendly festival that partners Colour, music and great food.")

e3 = Event.create(:title => 'Festival of the Winds', :date => '08/09/19', :image => 'https://www.weekendnotes.com/im/008/08/kite-festival-bondi-beach1.jpg', :address => 'Queen Elizabeth Dr, Bondi Beach NSW 2026', :info => "Waverley Council’s Festival of the Winds is one of Sydney’s premier festivals attracting up to 70,000+ visitors to the free fun filled day on iconic Bondi Beach; and is one of the largest and best known kite festivals in the world attracting local and global media coverage.")

Location.destroy_all
puts "Creating locations"
l1 = Location.create(:name => 'Auburn', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/%281%29St_Josephs_Village_Auburn_043.jpg/270px-%281%29St_Josephs_Village_Auburn_043.jpg')
l2 = Location.create(:name => 'St Ives', :image => 'https://www.realestate.com.au/neighbourhoods/content/suburb/editorial/nsw/st%20ives-2075/homes01-2.jpg')
l3 = Location.create(:name => 'Bondi Beach', :image => 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Bondi_Beach_Sydney_Australia_7.jpg' )

puts "Associations"
# Location and Event
l1.events << e1
l2.events << e2
l3.events << e3


# User and Event
u1.events << e1 << e2
u2.events << e2 << e3
