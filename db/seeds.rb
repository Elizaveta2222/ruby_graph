Resort.delete_all
Resort.reset_pk_sequence
Resort.create([
{name:'Bahia Blanca Resorts', email: 'book@gmail.com', description: 'Bahia Blanca is a holiday superior apartment resort situated on the island of Gran Canaria'},
{name:'Holiday Club Katinkulta', email: 'therest@gmail.com', description: 'The most versatile holiday resort in the Nordic Countries – is located in the Kainuu region in North Eastern Finland, Vuokatti'},
])

Apartment.delete_all
Apartment.reset_pk_sequence
Apartment.create([
{room_type:'Superior Room', resort_id: 1, description: 'One bedroom and bathroom superior apartment with balcony or yard'},
{room_type:'Deluxe 2 bedrooms', resort_id: 1, description: 'Exclusive luxury suite 80 m with two bedrooms and bathrooms'},
{room_type:'Single Superior Room', resort_id: 2, description: 'Spacious superior-class room with bathroom and balcony'},
{room_type:'Double Superior Room', resort_id: 2, description: 'Every room boasts a balcony with an amazing view of the golf course or the Vuokatti hills'},
{room_type:'Double Suite', resort_id: 2, description: 'Spacious and high-quality suite contain a separate bedroom, living room and bathroom with a sauna'},
])
