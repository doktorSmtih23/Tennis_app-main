import 'package:flutter/material.dart';


class BotonAzul extends StatelessWidget {

final String etiqueta;
final Function presionar;

const BotonAzul({
  Key key, 
  @required this.etiqueta,
  @required this.presionar
  }) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        elevation: 2,
        highlightElevation: 5,
        color: Colors.orange[300],
        shape: StadiumBorder(),
        onPressed: this.presionar,
        child: Container(
          height: 55,
          width: double.infinity,
          child: Center(
              child: Text(
            this.etiqueta,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
        ));
  }
}
