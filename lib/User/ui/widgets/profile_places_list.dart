import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_place.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {

  /*Place place = new Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place2 = new Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');
*/


  Place place2 = Place(
      name: "Mountains",
      description: "Hiking. Water fall hunting. Natural bath, Scenery & Photography ",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/3/3c/San_Juans_north_of_Durango.jpg",
      likes: 10
  );

  Place place = Place(
      name: "Knuckles Mountains Range",
      description: "Hiking. Water fall hunting. Natural bath",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/3/3c/San_Juans_north_of_Durango.jpg",
      likes: 3,
      userOwner: null
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace(place),
          ProfilePlace( place2),
        ],
      ),
    );
  }

}