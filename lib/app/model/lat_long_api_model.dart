class LatLongApiModel {
  String? name;
  double? lat;
  double? lon;
  String? country;

  LatLongApiModel({this.name, this.lat, this.lon, this.country});

  LatLongApiModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
    country = json['country'];
  }
}
