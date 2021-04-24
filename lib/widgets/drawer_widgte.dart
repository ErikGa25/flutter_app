import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';
import 'package:intl/intl.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

Widget showDrawerMenu(BuildContext context) {
  Color _colorDivider = Colors.amber[800];
  double _thick = 0.45;
  double _sizeIcon = 25.0;

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
        SizedBox(height: 20.0),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(FontAwesome5.wikipedia_w, size: _sizeIcon), 
              onPressed: () => _launchURL('https://es.wikipedia.org/wiki/Wikipedia:Portada')
            ),

            IconButton(
              icon: Icon(FontAwesome5.chrome, size: _sizeIcon), 
              onPressed: () => _launchURL('https://www.google.com/')
            ),

            IconButton(
              icon: Icon(FontAwesome5.share_alt_square, size: _sizeIcon), 
              onPressed: () =>  _shareTextApp(),
            )
          ]
        )
      ]
    )
  );  
}

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _shareTextApp() async {
  var newFormat = new DateFormat('yyyy-MM-dd hh:mm');
  var dateFormat = newFormat.format(DateTime.now());
  
  try {
    await WcFlutterShare.share(
      sharePopupTitle: 'Compartir con:',
      subject: '#Flutter App',
      text: '#Flutter App: ' + dateFormat,
      mimeType: 'text/plain'
    );
  } catch (e) {
    print('error: $e');
  }
}