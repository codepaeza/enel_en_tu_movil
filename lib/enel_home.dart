import 'package:enelpruebav1/buttons_container.dart';
import 'package:flutter/material.dart';
import 'appbar_enel.dart';
import 'person_image.dart';
import 'elena_conexion.dart';
import 'search_section.dart';

class EnelHome extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EnelHome();
  }

}

class _EnelHome extends State<EnelHome>{
  int indexTap=0;

  final List<Widget> widgetsChildren=[
    AppbarEnel(),
    ButtonsContainer(),
    ElenaConexion(),
    //PersonImage('assets/img/person.jpg'),

  ];
  void onTapTapped(int index){
    setState(() {
      indexTap=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.deepPurpleAccent
          ),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items:[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("")
                ),

              ]
          )
      ),
    );
  }

}