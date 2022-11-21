import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/pais_widget.dart';
import 'detail_screen.dart';
import '../model/pais.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var paises = Backend().getPaises();
 

  void showDetail( Pais pais) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( pais: pais,);
    }));
    
    setState(() {
 
      paises = Backend().getPaises();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 
    
      ),


      
      body: ListView.separated(
        itemCount: paises.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => EmailWidget(
          pais: paises[index],
          onTap: showDetail,  
  
        ),
      
          
      ),  

    );  
  }
}
