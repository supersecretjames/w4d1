# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# links = Link.create([{long: 'http://www.google.com', short: 'google'])

Long.create(:long=>"http://www.google.com")
Link.create(:long_id=>1, :user_id => 1)
Long.create(:long=>"http://www.reddit.com")
Link.create(:long_id=>2, :user_id=>2)
User.create(:email=>'bob@yahoo.com',:username=>'Bob')
User.create(:email=>'mike@yahoo.com',:username=>'Mike')
User.create(:email=>'john@yahoo.com',:username=>'John')
User.create(:email=>'mary@gmail.com',:username=>'Mary')
link = Link.find(1)
link2 = Link.find(2)
user = User.find(1)
user2 = User.find(2)
user3 = User.find(3)
user4 = User.find(4)
Link.open_short(link,user)
Link.open_short(link,user2)
Link.open_short(link,user3)
Link.open_short(link,user4)
Link.open_short(link2,user)
Link.open_short(link2,user2)
Tag.create(:tag=>"funny")
Tag.create(:tag=>"cool")
Tag.create(:tag=>"horrible")
Tag.create(:tag=>"useful")




