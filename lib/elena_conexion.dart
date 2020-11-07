import 'package:flutter/material.dart';
import 'button_reconexion.dart';

class ElenaConexion extends StatelessWidget{
  String namePlace ='Elena';
  int star;
  String descriptionPlace;
  //Constructor DescriptionPlace
  //ElenaConexion(this.namePlace,this.star,this.descriptionPlace);

  String descriptionLugar= 'Conexión con la aplicación de WhatsApp Elena para: Solicitud Reconexión de Servicio, Crédito Fácil Codensa, Asesoría en Seguros, Asistencia y Asesoría, Reportes de Fallas de Servicio ';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description=Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionLugar,
        style: const TextStyle(
            fontFamily: 'Manrope',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff828282)
        ),
      ),

    );

    final stars_half=Container(
      margin: EdgeInsets.only(
        top: 223.0,
        right: 3.0,
      ),
      child: Icon(
          Icons.star_half,
          color: Color(0xffF2C611)
      ),
    );

    final stars_border=Container(
      margin: EdgeInsets.only(
        top: 223.0,
        right: 3.0,
      ),
      child: Icon(
          Icons.star_border,
          color: Color(0xffF2C611)
      ),
    );

    final stars=Container(
      margin: EdgeInsets.only(
        top: 223.0,
        right: 3.0,
      ),
      child: Icon(
          Icons.forward,
          color: Color(0xffF2C611)
      ),
    );

    final title_stars=Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            top: 220.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            stars,
            //stars,
            //stars,
            //stars,
            //stars,,
          ],
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonReconexion("Conectar con Elena")
      ],
    );
  }

}