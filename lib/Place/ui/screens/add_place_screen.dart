
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:platzi_trips_app/Place/ui/widgets/title_input_location.dart';
import 'package:platzi_trips_app/User/ui/widgets/title_header.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/widgets/text_input.dart';

class AddPlaceScreen extends StatefulWidget {

  File image;
  AddPlaceScreen({Key key, this.image});

  @override
  State createState(){
    return _AddPlaceScreen();
  }
}
class _AddPlaceScreen extends State<AddPlaceScreen>{

  @override
  Widget build(BuildContext context){

    final _controllerTitlePlace = TextEditingController();
    final _controllerDescription = TextEditingController();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(height: 300.0),
          Row( //App Bar
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 25.0,
                  left: 5.0
                ),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45.0,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
           Flexible(
              child: Container(
                padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
                 child: TitleHeader(title: "Add a new place",),
                 ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: <Widget>[
                Container(),//Foto
                Container(//TextField Title
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextInput(hintText: "Title", inputextType: null,maxLines: 1 , controller: _controllerTitlePlace),
                ),
                TextInput(
                    hintText: "Description",
                    inputextType: TextInputType.multiline,
                    maxLines: 4,
                    controller: _controllerDescription),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation( hintText: "Add Location",iconData: Icons.location_on , controller: null),
                ),
              ],
            ),

          )
        ],
      ),
    );
  }
}