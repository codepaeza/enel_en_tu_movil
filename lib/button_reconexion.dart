import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class ButtonReconexion extends StatelessWidget{
  String buttonText = "Conectar con Elena";
  ButtonReconexion(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: (){
        //  Scaffold.of(context).showSnackBar(
        //      SnackBar(
        //        content: Text("Estableciendo Conexión con Elena"),

          //    ));

          FlutterOpenWhatsapp.sendSingleMessage("573162836092", "Hola, estoy conectado desde Enel en mi Móvil");
        },

        child: Container(
            margin: EdgeInsets.only(
              top: 30.0,
              left: 20.0,
              right: 20.0,
            ),
            height: 50.0,
            width: 180.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: LinearGradient(
                    colors: [
                      Color(0xFF239B56),
                      Color(0xFF58D68D)
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
                        color: Colors.amberAccent
                    )
                )
            )
        )
    );
  }

}