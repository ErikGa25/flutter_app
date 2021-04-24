import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer_widgte.dart';

class TextoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _goBack(context),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(235, 138, 68, 1.0),
            title: Text('Texto'),
          ),

          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue[400],
                  Colors.red[300],
                ]
              )
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0), 
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", textAlign: TextAlign.justify)
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                      child: Image.asset('assets/images/texto1.jpg')
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0), 
                      child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", textAlign: TextAlign.justify)
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0), 
                      child: Text('The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', textAlign: TextAlign.justify)
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                      child: Image.asset('assets/images/texto2.jpg')
                    )
                  ]
                )
              ]
            ),
          ),

          endDrawer: showDrawerMenu(context)
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