import 'package:equiposudamericanos_alejandromendoza/model/pais.dart';

import 'pais.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _paises = [
    Pais(
        id: 1,
        name: 'CBF-Brasil',
        descripcion:
            'selección de fútbol de Brasil es el equipo que representa a dicho país en las competiciones oficiales de fútbol masculino. Su organización está a cargo de la Confederación Brasileña de Fútbol, perteneciente a la Confederación Sudamericana de Fútbol.',
        capital: 'Brasilia',
        estadio: 'Maracana',
        confederacion: 'Conmebol'),
    Pais(
        id: 2,
        name: 'AFA-Argentina',
        descripcion:
            'La selección masculina de fútbol de Argentina, es el equipo formado por jugadores con dicha nacionalidad que representa desde 1902 a la Asociación del Fútbol Argentino en las competiciones oficiales.',
        capital: 'Buenos Aires',
        estadio: 'Monumental, La Bombonera',
        confederacion: 'Conmebol'),
    Pais(
        id: 3,
        name: 'AUF-Uruaguay',
        descripcion:
            'La selección de fútbol de Uruguay es el equipo representativo del país en las competiciones oficiales. Su organización está a cargo de la Asociación Uruguaya de Fútbol, perteneciente a la Confederación Sudamericana de Fútbol.',
        capital: 'Montevideo​',
        estadio: 'Centenario',
        confederacion: 'Conmebol'),
    Pais(
        id: 4,
        name: 'Ecuador-FEF',
        descripcion:
            'La selección de fútbol de Ecuador es el equipo representativo de ese país en las competiciones oficiales de fútbol. Está controlada por la Federación Ecuatoriana de Fútbol, perteneciente a la Conmebol. Fue fundada en 1925 y se incorporó a la FIFA en 1926.',
        capital: 'Quito',
        estadio: 'Olimpico Atahualpa',
        confederacion: 'Conmebol'),
    Pais(
        id: 5,
        name: 'Peru',
        descripcion:
            'La selección de fútbol de Perú, también conocida como la Blanquirroja, ​​​ es el equipo representativo de dicho país en las competiciones oficiales de fútbol masculino.',
        capital: 'Lima',
        estadio: 'Estadio Nacional del Perú',
        confederacion: 'Conmebol'),
  ];

  List<Pais> getPaises() {
    return _paises;
  }
}
