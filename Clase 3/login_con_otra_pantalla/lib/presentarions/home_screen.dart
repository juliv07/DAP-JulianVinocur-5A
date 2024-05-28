import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final String userName;
  HomeScreen({super.key, this.userName = ''});

  @override
  Widget build(BuildContext context) {
    List albums = [
      '11','19','1989','21','25','27','30','¿A Dónde Vamos?','After Hours','Balas Perdidas',
      'Beauty Behind The Madness','Cada Letra Que Escribo','Canciones del Huracan + Wonderful Noches',
      'CARAVANA','Chemical','Cicatrices','Columbia','Cositas','The Days / Nights','De Bichos Y Flores',
      'Deseando Mis Pasos','Destinología','Doo-Wops & Hooligans','El Llamado del Sol','El Otro','THE E.N.D. (THE ENERGY NEVER DIES)',
      'Eras Of Us','Espejos','evermore','Fearless','folklore','FOUR','Ghost Stories','GUAU!','Hola Mundo',
      'In The Lonly Hour','Jazz','La Dirección','Libertad','Limon y Sal','Lo Que Ayer Calle','Lo Que Hoy Quieras',
      'Lover','Lungs','Me Diste La Espalda','Music Of The Spheres','A Night At The Opera','Obsesionario',
      'OSCURO ÉXTASIS','Parachutes','Para Vivir Mejor','Porfiado','Prestige','PRISM','Quiromancia','Raro','Red',
      'reputation','Señales','Some Nights','Speak Now','Starboy','Stories','TALKING IS HARD','Talk That Talk',
      'Teenage Dream','This Is Acting','True','Unapologetic','Unorthodox Jukebox','Un Verano Sin Ti','Viaje',
      'Vida Lejana','Viva La Vida or Death and All His Friends','Voragine','x','YSISMO'
      ];
    List artists = [
      'Abel Pintos','Adele','Taylor Swift','Adele','Adele','Ciro y los Persas','Adele','Morat',
      'The Weeknd','Morat','The Weeknd','Koino Yokan','Tan Bionica','WOS','Post Malone','La ultima carta',
      'Quevedo','Benjamín Amadeo','Avicii','La Vela Puerca','Koino Yokan','Tan Bionica','Bruno Mars',
      'Koino Yokan','Chano','Black Eyed Peas','FLETCHER','Ciro y los Persas','Taylor Swift','Taylor Swift',
      'Taylor Swift','One Direction','Coldplay','Árbol','Tan Bionica','Sam Smith','Queen','Conociendo Rusia',
      'Airbag','Julieta Venegas','Koino Yokan','Koino Yokan','Taylor Swift','Florence + The Machine','Koino Yokan',
      'Coldplay','Queen','Tan Bionica','WOS','Coldplay','Koino Yokan','El Cuarteto De Nos','Daddy Yankee',
      'Katy Perry','Benjamín Amadeo','El Cuarteto De Nos','Taylor Swift','Taylor Swift','Callejeros','fun.',
      'Taylor Swift','The Weeknd','Avicii','WALK THE MOON','Rihanna','Katy Perry','Sia','Avicii','Rihanna',
      'Bruno Mars','Bad Bunny','Mancha De Rolando','Benjamín Amadeo','Coldplay','Airbag','Ed Sheeran','YSY A'
      ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome $userName',
          style: const TextStyle(color: Color.fromARGB(255, 228, 118, 0)),
        ),
      ),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromARGB(255, 194, 245, 255),
            child: ListTile(
              title: Text(albums[index]),
              subtitle: Text(artists[index]),
            ),
          );
        },
      ),
    );
  }
}
