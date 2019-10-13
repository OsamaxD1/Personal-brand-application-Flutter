import 'package:meta/meta.dart';

class Company{
  Company({
    @required this.name,
    @required this.location,
    @required this.logo,
    @required this.backDropPhoto,
    @required this.about,
    @required this.theBrands
});
  final String name;
  final String location;
  final String logo;
  final String backDropPhoto;
  final String about;
  final List<Brands> theBrands;
}

class Brands {
  Brands({
    @required this.title,
    @required this.thumbnail,
    @required this.url
});
  final String title;
  final String thumbnail;
  final String url;
}