import 'package:brandprofileapp/model/brand.dart';

class RepoData{
  static final Company bawp=new Company(
      name: 'Open Source Project by ',
      location: '',
      logo: 'images/logo.png',
      backDropPhoto: 'images/developerpic.png',
      about: '',
      theBrands: <Brands>[
        new Brands(title: 'Flutter Developer',
            thumbnail: 'images/flutter.jpg',
            url: ''),
        new Brands(title: 'Web Project',
            thumbnail: 'images/webdesign.png',
            url: ''),
        new Brands(title: 'Python Project',
            thumbnail: 'images/python.png',
            url: '')
      ]);
}