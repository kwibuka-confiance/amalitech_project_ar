class Filter {
  String name;
  Filter(this.name);
}

final List<Filter> filters = [
  Filter('All'),
  Filter('Favorite'),
  Filter('Speed'),
  Filter('Distance'),
  Filter('Duration'),
];
