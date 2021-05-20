import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImagenesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _goBack(context),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(235, 138, 68, 1.0),
          title: Text('Flutter App'),
        ),

        body: PhotoView(
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 1.0,
          initialScale: PhotoViewComputedScale.contained * 1.0,
          imageProvider: AssetImage("assets/images/mapa.jpg"),
          enableRotation: true,
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