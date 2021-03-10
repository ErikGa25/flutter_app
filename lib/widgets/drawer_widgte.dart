import 'package:flutter/material.dart';

Widget showDrawerMenu(BuildContext context) {
  Color _colorDivider = Colors.amber[800];
  double _thick = 0.45;

  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fondo.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Text(
            'Pixabay', 
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.end
          )
        ),

        ListTile(
          title: Text('Inicio'),
          onTap: () => Navigator.pushReplacementNamed(context, 'home')
        ),

        Divider(color: _colorDivider, thickness: _thick),

        ListTile(
          title: Text('Texto'),
          onTap: () => Navigator.pushReplacementNamed(context, 'texto')
        ),

        Divider(color: _colorDivider, thickness: _thick),

        ListTile(
          title: Text('Formulario'),
          onTap: () {
            Navigator.pop(context);
          }
        ),

        Divider(color: _colorDivider, thickness: _thick)
      ]
    )
  );
}