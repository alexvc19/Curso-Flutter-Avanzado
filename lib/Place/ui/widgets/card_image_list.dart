import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_home.dart';

class CardImageList extends StatelessWidget {

  final path1 = "assets/img/beach_palm.jpeg";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width = 320.0;
    double height = 240;
    double lef = 20.0;

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(pathImage: path1, iconData: Icons.favorite_border,
          width: width,
            left: lef,
          height: height,),
          CardImageWithFabIcon(pathImage:"assets/img/mountain.jpeg", iconData: Icons.favorite_border,
            width: width,
            left: lef,
            height: height,),
          CardImageWithFabIcon(pathImage:"assets/img/mountain_stars.jpeg", iconData: Icons.favorite_border,
            width: width,
            left: lef,
            height: height,),
          CardImageWithFabIcon(pathImage:"assets/img/river.jpeg", iconData: Icons.favorite_border,
            width: width,
            left: lef,
            height: height,),
          CardImageWithFabIcon(pathImage: "assets/img/sunset.jpeg", iconData: Icons.favorite_border,
            width: width,
            left: lef,
            height: height,),
        ],
      ),
    );
  }

}