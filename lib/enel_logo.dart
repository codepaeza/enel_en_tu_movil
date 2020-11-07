import 'package:flutter/material.dart';



class EnelLogo extends StatelessWidget {
  String pathImage = "assets/img/logo_enel.jpg";

  EnelLogo(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 180.0,
      width: 350.0,
      margin: EdgeInsets.only(
          top: 100.0,
          left: 4.0
      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,

      ],
    );
  }
}