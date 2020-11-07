import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  String title="Enel en tu Móvil";
  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Color(0xFF4495cb),
                Color(0xFFe5e5e5)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp

          )
      ),

      child: Text(
        title,
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 40.0,
            fontFamily: "Manrope",
            fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9,-0.6),
    );
  }

}