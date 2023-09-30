

class LocationInfo {
  String locationName;
  double latitude;
  double longitude;

  LocationInfo({
    required this.locationName,
    required this.latitude,
    required this.longitude,
  });
}

List<LocationInfo> locations = [
  LocationInfo(locationName: 'Riyadh', latitude: 24.713552, longitude: 46.675297),
  LocationInfo(locationName: 'Jeddah', latitude: 21.485811, longitude: 39.192505),
  LocationInfo(locationName: 'Makkah', latitude: 21.389082, longitude: 39.857910),
  LocationInfo(locationName: 'Al Madina', latitude: 24.410400, longitude: 54.463749),
  LocationInfo(locationName: 'Dammam', latitude: 26.420683, longitude: 50.088795),
  LocationInfo(locationName: 'Al Khubar', latitude: 26.2833, longitude: 50.2000),
  LocationInfo(locationName: 'Tabuk', latitude: 28.3972, longitude: 36.5789),
];