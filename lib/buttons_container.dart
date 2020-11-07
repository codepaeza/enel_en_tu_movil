import 'package:enelpruebav1/button_chat.dart';
import 'package:enelpruebav1/button_creditofacil.dart';
import 'package:enelpruebav1/button_duplicado_factura.dart';
import 'package:enelpruebav1/button_llamada_falla.dart';
import 'package:enelpruebav1/button_llamada_linea.dart';
import 'package:enelpruebav1/button_videollamada.dart';
import 'package:enelpruebav1/button_email.dart';
import 'package:flutter/material.dart';
import 'dart:core';


import 'person_image.dart';
import 'enel_logo.dart';

class ButtonsContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ButtonDuplicadoFactura(),
        ButtonChat(),
        ButtonVideollamada(),
        ButtonEnviarEmail(),
        ButtonCreditoFacil(),
        ButtonReporteFalla(),
        ButtonLineaCliente(),

      ],
    );
  }

}