import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {

  UserBloc userBloc;
  User user;
  ProfilePlacesList(@required this.user);

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

  );

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: StreamBuilder(stream: userBloc.myPlacesListStream(user.uid), builder: (context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.done:
            return Column(
              children: userBloc.buildMyPlaces(snapshot.data.documents)
            );
          case ConnectionState.active:
            return Column(
                children: userBloc.buildMyPlaces(snapshot.data.documents)
            );
          case ConnectionState.none:
            return CircularProgressIndicator();
          default:
            return Column(
                children: userBloc.buildMyPlaces(snapshot.data.documents)
            );
        }
      }),
    );
  }
/*
Column(
        children: <Widget>[
          ProfilePlace(place),
          ProfilePlace( place2),
        ],
      ),
 */
}