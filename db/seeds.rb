# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: 'Muna')

more_rooms = [
  {
    name: "1933 Old Millfun",
    address:"10 Shajing Rd, Hongkou District, Shanghai, China",
    description: "1933 is a complex of restaurants and shops in Hongkou District of Shanghai, China. The art-deco structures once housed the Shanghai Municipal Council Slaughterhouse, the largest slaughterhouse in Shanghai at the time.",
    room_photo_url: "https://images.squarespace-cdn.com/content/v1/5288cbb2e4b088c60f4c0a16/1404062133042-O3W7Y3K8H7RSFPDOV17G/image-asset.jpeg?format=2500w", 
    price:"200",
    capacity: 5,
    is_available: "true",
    user: user
  },
  {
    name: "Vue bar - table",
    address: "Hyatt on the Bund, 30/F, 199 Huangpu Lu",
    description: "An elegant, comfortable and stylish bar located on the top two levels of Hyatt on the Bund, commanding the breathtaking views of both sides of the Huangpu River - the Bund on the Puxi side and the colourful skyline of the Lujiazui area on the Pudong side.",
    room_photo_url: "https://www.therooftopguide.com/rooftop-bars-in-shanghai/Bilder/VueBaratTheHyatt_1_slide.jpg",
    price:"200",
    capacity: 5,
    is_available: "true",
    user: user
  },
  {
    name: "Wukang Mansion",
    address: "1850 Huaihai Road, Xuhui District, Shanghai, China",
    description: "Shanghai's most famous historic apartment block, designed by Hungarian-Slovak architect Laszlo Hudec in 1924.",
    room_photo_url:"http://neijianzhu.com/wp-content/uploads/2019/04/A58I6874-2000x1125.jpg",
    price:"200",
    capacity: 5,
    is_available: "true",
    user: user
  },
  {
    name: "Yongfu Elite",
    address: "200 Yongfu Rd, Xuhui District, Shanghai, China",
    description: "A magical garden aglow with paper lanterns surrounds this historic French Concession villa. With a 1930s Tudor-style interior structure, decorated with Chinese antiques, Deco furnishings, and shaded chandeliers.",
    room_photo_url:"https://b70f084e29f3f8faffb0-389fffc5b90936635d166a32fdb11b6a.ssl.cf3.rackcdn.com/andy-hayler-yongfoo-elite-dining-room-w709-h532.jpg",
    price:"200",
    capacity: 5,
    is_available: "true",
    user: user
  },
  {
    name:"Shikumen Lane house",
    address: "No. 816 Yan’an Middle Rd, Jing'an District, Shanghai, China",
    description: "Historic housing architecture unique to Shanghai that blends Chinese and Western structural styles.  Shikumen houses are two or three-story townhouses, with the front yard protected by a high brick wall. The entrance to each alley is usually surmounted by a stylistic stone arch.",
    room_photo_url: "https://static.travelweekly.com/i/sized/780/437/www.cfmedia.vfmleonardo.com/imageRepo/4/0/82/498/71/Secret_Garden_S.jpg",
    price:"200",
    capacity: 5,
    is_available: "true",
    user:user
  }
]
# more_rooms.each do |room|

#   room["capacity"] = 5
#   rm = Room.create(room)
#   puts "#{Room.count} rooms created"
# end
rooms = Room.all
rooms.each do |room|
  room["date"] = "2021/10/09"
  room["phone_number"] = "+83-444-4567-3645"
  room.save
end