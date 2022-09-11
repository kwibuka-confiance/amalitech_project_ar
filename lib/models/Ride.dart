//  WE HAVE TO USE RIDE WITH DISTANCE IN DOUBLE AND
// SPEED IN DOUBLE EVEN IMAGE IN IMAGE BUT IT NOT
//NEEDED RIGHT KNOW

class Ride {
  String id;
  String name;
  DateTime date;
  String address;
  String distance;
  String duration;
  String speed;
  String image;
  bool isFavorite = false;

  Ride({
    required this.id,
    required this.name,
    required this.address,
    required this.distance,
    required this.duration,
    required this.date,
    required this.speed,
    required this.image,
    this.isFavorite = false,
  });
}

// LIST OF RIDES
final List<Ride> rides = [
  Ride(
    id: '1',
    name: 'Ride 1',
    address: 'College Ami des Enfants, Kigali 12ST Avenue',
    distance: '0.031',
    duration: '0.61',
    date: DateTime.now(),
    speed: '1',
    image: 'https://pbs.twimg.com/media/CiMiO4uUkAAUKc-.jpg',
    isFavorite: false,
  ),
  Ride(
    id: '2',
    name: 'Ride 2',
    address: 'Kinyinya Bus Parking center , Kigali 16KG Avenue',
    distance: '0.20',
    duration: '0.32',
    date: DateTime.now(),
    speed: '0.22',
    image:
        'https://raw.github.com/visgl/deck.gl-data/master/images/whats-new/mapbox-layers.jpg',
    isFavorite: false,
  ),
  Ride(
    id: '3',
    name: 'Ride 3',
    address: 'Ineza Garden, Kigali 46KG Avenue',
    distance: '0.03',
    date: DateTime.now(),
    duration: '0.33',
    speed: '1.23',
    image: 'https://www.mrrl.org/sites/default/files/2021-04/maps.jpg',
    isFavorite: true,
  ),
  Ride(
    id: '4',
    name: 'Ride 6',
    address: 'Kibagabaga Hospital, Kigali 46KG Avenue',
    distance: '0.03',
    date: DateTime.now(),
    duration: '0.33',
    speed: '1.23',
    image: 'https://www.mrrl.org/sites/default/files/2021-04/maps.jpg',
    isFavorite: false,
  ),
];
