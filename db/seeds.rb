User.destroy_all
puts "Creating users"
u1 = User.create :email => 'amy@gmail.com', :name => 'Amy Pumanee', :dob => '09/03/2000', :phone => '0406665555', :image => "https://media.licdn.com/dms/image/C5603AQFr29JGFCIG3g/profile-displayphoto-shrink_200_200/0?e=1570060800&v=beta&t=tBk-yyPbBaehzY6N1BPw5oFntqmlKfT0_s2R1z86KiE", :password => 'chicken', :admin => true
u2 = User.create :email => 'ana@gmail.com', :name => 'Ana De', :dob => '09/07/2000', :phone => '0402226677', :image => "https://www.goldenglobes.com/sites/default/files/articles/cover_images/gettyimages-594338886.jpg", :password => 'chicken'
u3 = User.create :email => 'john@gmail.com', :name => 'John Elmore', :dob => '10/07/2000', :phone => '0402226688', :image => "https://www.timeshighereducation.com/sites/default/files/byline_photos/me.jpg", :password => 'chicken'
u4 = User.create :email => 'tim@gmail.com', :name => 'Tim Dean', :dob => '13/08/2000', :phone => '0402226699', :image => "https://researchers.mq.edu.au/files-asset/81600353/IMG_0039.jpgg", :password => 'chicken'
u5 = User.create :email => 'miranda@gmail.com', :name => 'Miranda Loren', :dob => '09/03/2000', :phone => '0406688888', :image => "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fyolarobert1%2Ffiles%2F2019%2F06%2FMiranda-Hero-Image-2017-Crop-2-1200x1022.jpg", :password => 'chicken'

Event.destroy_all
puts "Creating events"
e1 = Event.create(:title => 'Sydney Cherry Blossom Festival 2019', :start_date => '17/08/19, 9:00 am', :end_date => '25/08/19, 5:00 pm', :image => 'https://media.timeout.com/images/105483190/1372/772/image.jpg', :address => 'Auburn Botanic Gardens', :info => "To celebrate the start of cherry blossom season, Auburn Botanic Gardens runs a nine-day festival of ticketed Hanami (‘flower viewing’) sessions and midweek tours so you can wander under the canopy of pink flowers in the Japanese-style gardens.")

e2 = Event.create(:title => 'Colorfest Sydney', :start_date => '31/08/19, 11:00 am', :end_date => '31/08/19, 4:00 pm', :image => 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F54027535%2F215410162411%2F1%2Foriginal.20181217-055730?w=800&auto=compress&rect=0%2C164%2C1618%2C809&s=747f7a810d8cf0728ad7942fd2b942ad', :address => '450 Mona Vale Rd, St Ives, NSW 2075', :info => "Come and Enjoy a Fun Filled Day. One Massive Festival with Non Stop Music & Dance.This is one of kind Colour festival that will fuze all the elements of EDM, Commercial with touch of RNB Music, Pop, House. Live performances from the City’s Best DJ’s. Great way to spend time with the family as you go crazy in the paint and let your true colours show. You don’t want to miss this family friendly festival that partners Colour, music and great food.")

e3 = Event.create(:title => 'Festival of the Winds', :start_date => '08/09/19, 11:00 am', :end_date => '08/09/19, 4:00 pm', :image => 'https://www.weekendnotes.com/im/008/08/kite-festival-bondi-beach1.jpg', :address => 'Queen Elizabeth Dr, Bondi Beach NSW 2026', :info => "Waverley Council’s Festival of the Winds is one of Sydney’s premier festivals attracting up to 70,000+ visitors to the free fun filled day on iconic Bondi Beach; and is one of the largest and best known kite festivals in the world attracting local and global media coverage.")

e4 = Event.create(:title => 'Living Laboratory - Outdoor Festival of Science' , :start_date => '18/08/19, 11:00 am', :end_date => '18/08/19, 3:00 pm', :image => 'https://www.rbgsyd.nsw.gov.au/getmedia/0f3b4035-ce73-46c5-8c49-ab5b6d11eaff/2018ScienceDay014?width=1500', :address => 'Royal Botanic Gardens', :info => "There’s fun for everyone – behind the scenes tours, talks, experiments and much more! It’s a free, outdoor family and community event celebrating science and providing a range of diverse and exciting hands-on science activities accessible for all ages." )

e5 = Event.create(:title => 'SYDNEY UNDERGROUND FILM FESTIVAL', :start_date => '07/08/2019, 7:00 am', :end_date => '07/08/2019, 10:00 pm', :image => 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F64678357%2F30205564165%2F1%2Foriginal.20190701-035250?h=300&w=600&auto=compress&rect=0%2C16%2C1844%2C922&s=432f9367053ffa5f01d0d98c5bb66a4f', :address => '105 Victoria Road Marrickville, NSW 2204', :info => "DJ Bryn of Cult Projections will be there, spinning some classic film toons, while you can enjoy nibbles and drinks thanks to our hospitality partners ISLAND BOYS (with their modern and Jamaican fare), CHAIN OF FIRE wines by Robert Oatley Winery plus beer thanks to The Factory Theatre! Then our host for the evening, Alexi Toliopoulos, will kick-off the official proceedings around 7:30pm and hand over the mic to Festival Director Stefan Popescu and Program Manager Nathan Senn to let it all out on what's in store for SUFF 2019." )

e6 = Event.create(:title => 'Sydney Science Festival', :start_date => '06/08/2019', :end_date => '18/08/2019', :image => 'https://media.timeout.com/images/105439802/1372/772/image.jpg', :address => 'Sydney'  , :info => "Highlights for the 2019 festival include an evening of stargazing and music in Centennial Parklands (Aug 17), a day in the research lab of PlantBank at the Australian Botanic Garden (Aug 16), and a discussion about the future of the Australian Space Agency (Aug 10). We'll also see some big brainy names, like funky dresser Dr Karl Kruszelnicki of Triple J fame and math tutoring superstar Eddie Woo taking part in panels throughout the festivals run."  )

e7 = Event.create(:title => 'Sydney Folk Festival', :start_date => '16/08/2019, 12:00 am', :end_date => '18/08/2019, 11:59 pm', :image => 'https://cdn-az.allevents.in/events5/banners/c7fd964b0c0c600defd88fdf01d15713bd088db77d65b47dfe026f8936d89a8a-rimg-w518-h296-gmir.jpg?v=1563898275' ,:address => '198 Pitt St Sydney NSW 2000', :info => "The festival’s theme is ‘The next generation of folk music’ and its diverse programming will showcase the new interpreters of the many musical genres under the folk music banner. With an emphasis on youth, the performers will range from the winners of the NSW Folk Federation’s 2019 Junior and Young Folk Awards, to legends like internationally recognised Australian songwriter, Eric Bogle." )

#e8 = Event.create(:title => , :start_date => , :end_date => , :image => ,:address =>  , :info =>  )

#e9 = Event.create(:title => , :start_date => , :end_date => , :image =>  ,:address => ,:info =>  )

Location.destroy_all
puts "Creating locations"
l1 = Location.create(:name => 'Auburn', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/%281%29St_Josephs_Village_Auburn_043.jpg/270px-%281%29St_Josephs_Village_Auburn_043.jpg')
l2 = Location.create(:name => 'St Ives', :image => 'https://www.realestate.com.au/neighbourhoods/content/suburb/editorial/nsw/st%20ives-2075/homes01-2.jpg')
l3 = Location.create(:name => 'Bondi Beach', :image => 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Bondi_Beach_Sydney_Australia_7.jpg' )
l4 = Location.create(:name => 'Sydney', :image => 'https://www.tourstogo.com.au/things-to-do/wp-content/uploads/2018/12/Sydney-Featured.jpg' )
l5 = Location.create(:name => 'Marrickville', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Marrickville4.JPG/270px-Marrickville4.JPG' )

Attend.destroy_all
puts "Creating Attends"
a1 = Attend.create(:user_id => u1.id, :event_id => e1.id)
a2 = Attend.create(:user_id => u1.id, :event_id => e2.id)
a3 = Attend.create(:user_id => u1.id, :event_id => e3.id)
a4 = Attend.create(:user_id => u1.id, :event_id => e4.id)
a5 = Attend.create(:user_id => u1.id, :event_id => e5.id)
a6 = Attend.create(:user_id => u1.id, :event_id => e6.id)
a7 = Attend.create(:user_id => u1.id, :event_id => e7.id)
a8 = Attend.create(:user_id => u2.id, :event_id => e1.id)
a9 = Attend.create(:user_id => u2.id, :event_id => e2.id)
a10 = Attend.create(:user_id => u2.id, :event_id => e3.id)
a11 = Attend.create(:user_id => u2.id, :event_id => e4.id)
a12 = Attend.create(:user_id => u2.id, :event_id => e5.id)
a13 = Attend.create(:user_id => u2.id, :event_id => e6.id)
a14 = Attend.create(:user_id => u2.id, :event_id => e7.id)
a15 = Attend.create(:user_id => u3.id, :event_id => e7.id)
a16 = Attend.create(:user_id => u3.id, :event_id => e1.id)
a17 = Attend.create(:user_id => u3.id, :event_id => e2.id)
a18 = Attend.create(:user_id => u3.id, :event_id => e3.id)
a19 = Attend.create(:user_id => u3.id, :event_id => e4.id)
a20 = Attend.create(:user_id => u3.id, :event_id => e5.id)
a21 = Attend.create(:user_id => u3.id, :event_id => e6.id)
a22 = Attend.create(:user_id => u4.id, :event_id => e7.id)
a23 = Attend.create(:user_id => u4.id, :event_id => e2.id)
a24 = Attend.create(:user_id => u4.id, :event_id => e3.id)
a25 = Attend.create(:user_id => u4.id, :event_id => e4.id)
a26 = Attend.create(:user_id => u4.id, :event_id => e5.id)
a27 = Attend.create(:user_id => u5.id, :event_id => e1.id)
a28 = Attend.create(:user_id => u5.id, :event_id => e2.id)
a29 = Attend.create(:user_id => u5.id, :event_id => e3.id)
a30 = Attend.create(:user_id => u5.id, :event_id => e4.id)
a31 = Attend.create(:user_id => u5.id, :event_id => e5.id)
a32 = Attend.create(:user_id => u5.id, :event_id => e6.id)
a33 = Attend.create(:user_id => u5.id, :event_id => e7.id)

puts "Associations"
# Location and Event
l1.events << e1
l2.events << e2
l3.events << e3
l4.events << e4 << e6 << e7
l5.events << e5
