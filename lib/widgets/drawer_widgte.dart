import 'package:flutter/material.dart';

Widget showDrawerMenu(BuildContext context) {
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
            textAlign: TextAlign.end,
          ),
        ),

        ListTile(
          title: Text('Inicio'),
          onTap: () {
            Navigator.pop(context);
          },
        ),

        Divider(color: Colors.amber[800], thickness: 0.45),

        ListTile(
          title: Text('Información'),
          onTap: () {
            Navigator.pop(context);
          },
        ),

        Divider(color: Colors.amber[800], thickness: 0.45)
      ]
    )
  );
}