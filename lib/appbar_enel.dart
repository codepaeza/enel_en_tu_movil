import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'person_image.dart';
import 'enel_logo.dart';

class AppbarEnel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Enel en tu Móvil"),
        EnelLogo("assets/img/logo_enel.jpg"),
        PersonImage('assets/img/person.jpg')
      ],
    );
  }

}