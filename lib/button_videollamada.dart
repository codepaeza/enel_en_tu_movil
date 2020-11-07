import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonVideollamada extends StatelessWidget{
  String buttonText = "Videollamada Servicio al Cliente";
  //ButtonDuplicadoFactura(this.buttonText);




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: () async{
          //  Scaffold.of(context).showSnackBar(
          //      SnackBar(
          //        content: Text("Estableciendo Conexión con Elena"),

          //    ));


          const url = 'https://webrtc.millenium.com.co/codensa/videollamada.php';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'No establece conexión con $url';
          }

        },

        child: Container(
            margin: EdgeInsets.only(
              top: 10.0,
              left: 30.0,
              right: 20.0,
            ),
            height: 50.0,
            width: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF1493),
                      Color(0xFFFF00FF)
                    ],
                    begin: FractionalOffset(0.2,0.0),
                    end: FractionalOffset(1.0,0.6),
                    stops: [0.0,0.6],
                    tileMode: TileMode.clamp
                )
            ),
            child: Center(
                child: Text(
                    buttonText,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent
                    )
                )
            )
        )
    );
  }




}
