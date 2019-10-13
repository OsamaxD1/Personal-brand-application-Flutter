import 'package:brandprofileapp/model/brand.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BrandCard extends StatelessWidget {
  BrandCard(this.myBrand);

  final Brands myBrand;

  BoxDecoration _createShadowRoundCorners() {
    return BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: new BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black54, spreadRadius: 2.0, blurRadius: 10.0)
        ]);
  }

  Widget _createThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(myBrand.thumbnail),
          new Positioned(bottom: 12.0, right: 12.0, child: _createLinkButton())
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: _createShadowRoundCorners(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: _createThumbnail(),
          ),
          Flexible(
            flex: 2,
            child: createBrandInfo(),
          )
        ],
      ),
    );
  }

  Widget _createLinkButton() {
    return Material(
      color: Colors.white24,
      type: MaterialType.circle,
      child: new IconButton(
          icon: Icon(Icons.link),
          onPressed: () async {
            if (await canLaunch(myBrand.url)) {
              await launch(myBrand.url);
            }
          }),
    );
  }

  Widget createBrandInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 4.0, right: 4.0),
      child: new Text(
        myBrand.title,
        style: TextStyle(color: Colors.white.withOpacity(0.85)),
      ),
    );
  }
}
