import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/pais.dart';

class DetailScreen extends StatelessWidget {
  final Pais pais;

  const DetailScreen({Key? key, required this.pais}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(pais.name),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Descripcion: ${pais.descripcion}',
                  style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Estadio Local: ${pais.estadio}',
                  style: subjectTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              Text('Confederacion: ${pais.confederacion}', style: subjectTextStyle),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('Capital: ${pais.capital} ', style: bodyTextStyle),
              const SizedBox(height: 40.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(184, 255, 16, 3), // background
                  onPrimary: Color.fromARGB(255, 255, 254, 254), // foreground
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Done'),
              )
            ],
          ),
        ));
  }
}
