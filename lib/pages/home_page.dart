import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final double _space = 45.0;

  @override
  Widget build(BuildContext context) {
    
    double widthMedia = MediaQuery.of(context).size.width * 0.60;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(235, 138, 68, 1.0),
          title: Text('Flutter App'),
        ),

        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 100.0),

                FlatButton(
                  minWidth: widthMedia,
                  color: Colors.blue[400],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.orangeAccent,
                  child: Text('Lista de Compras', style: TextStyle(fontSize: 20.0)),
                  onPressed: (){}, 
                ),

                SizedBox(height: _space),

                FlatButton.icon(
                  minWidth: widthMedia,
                  color: Colors.red[400],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.greenAccent, 
                  icon: Icon(Icons.message), 
                  label: Text('Notificación', style: TextStyle(fontSize: 20.0)),
                  onPressed: (){},
                ),

                SizedBox(height: _space),

                RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: null,
                  child: Text('Botón Deshabilitado', style: TextStyle(fontSize: 20.0)),
                ),

                SizedBox(height: _space),

                Material(
                  child: Center(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.teal,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.notification_important, size: 30.0),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black54,
          child: Icon(Icons.person),
          onPressed: (){},
        ),
      ),
    );
  }
}