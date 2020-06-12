import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';


class User {
  final String uid;
  final String name;
  final String email;
  final String photoUrl;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlaces;

  //myFavoritePlaces
  //myPlaces

User({
    Key key,
    @required this.uid,
    @required this.name,
    @required this.email,
    @required this.photoUrl,
  this.myFavoritePlaces,
  this.myPlaces, photoURL

});
}