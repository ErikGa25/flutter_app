import 'package:flutter/material.dart';
import 'package:flutter_app/models/flutter_model.dart';
import 'package:flutter_app/providers/db_provider.dart';
import 'package:flutter_app/widgets/drawer_widgte.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _goBack(context),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color.fromRGBO(235, 138, 68, 1.0),
              title: Text('Flutter App'),
          ),

          body: FutureBuilder<List<FlutterModel>>(
            future: DBProvider.db.getAllProducts(),
            builder: (BuildContext context, AsyncSnapshot<List<FlutterModel>> snapshot) {
              if(!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final datos = snapshot.data;

              if(datos.length == 0) {
                return Center(
                  child: Text('No hay informacion'),
                );
              }

              return ListView.builder(
                itemCount: datos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                      title: Text(datos[index].id.toString() + '. ' + datos[index].nombre),
                      ),
                      Divider(color: Color.fromRGBO(75, 116, 71, 1.0), thickness: 0.25,)
                    ],
                  );
                }
              );
            },
          ),

          endDrawer: showDrawerMenu(context),
        )
      ),
    );
  }

  // volver a home
  Future<bool> _goBack(BuildContext context) async {
    Navigator.pushReplacementNamed(context, 'home');
    return false;
  }
}