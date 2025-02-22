import 'position.dart';

class Location {
  String? name;
  dynamic city;
  String? country;
  Position? position;

  Location({this.name, this.city, this.country, this.position});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    name: json['name'] as String?,
    city: json['city'] as dynamic,
    country: json['country'] as String?,
    position:
        json['position'] == null
            ? null
            : Position.fromJson(json['position'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'city': city,
    'country': country,
    'position': position?.toJson(),
  };
}
