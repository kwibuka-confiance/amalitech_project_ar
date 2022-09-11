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

  Ride({
    required this.id,
    required this.name,
    required this.address,
    required this.distance,
    required this.duration,
    required this.date,
    required this.speed,
    required this.image,
  });
}

// LIST OF RIDES
final List<Ride> rides = [
  Ride(
    id: '1',
    name: 'Ride 1',
    address: 'Address 1',
    distance: '0.1',
    duration: '1',
    date: DateTime.now(),
    speed: '1',
    image: 'https://pbs.twimg.com/media/CiMiO4uUkAAUKc-.jpg',
  ),
  Ride(
    id: '2',
    name: 'Ride 2',
    address: 'Address 2',
    distance: '0.2',
    duration: '2',
    date: DateTime.now(),
    speed: '2',
    image:
        'https://raw.github.com/visgl/deck.gl-data/master/images/whats-new/mapbox-layers.jpg',
  ),
  Ride(
    id: '3',
    name: 'Ride 3',
    address: 'Address 3',
    distance: '0.3',
    date: DateTime.now(),
    duration: '3',
    speed: '3',
    image: 'https://www.mrrl.org/sites/default/files/2021-04/maps.jpg',
  ),
];
