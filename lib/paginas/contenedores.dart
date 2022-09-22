import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:parcial2a/paginas/home.dart';
import 'package:parcial2a/temas/colores.dart';

class Contenedores extends StatefulWidget {
  Contenedores({Key? key}) : super(key: key);

  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  int menu_activo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: spotFooter(),
      body: spotBody(),
    );
  }

  Widget spotBody() {
    return IndexedStack(index: menu_activo, children: [
      Home(),
      /* Center(
        child: Text(
          "Principal",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),*/
      Center(
        child: Text(
          "Libreria",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Busqueda",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Configuraciones",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }

  Widget spotFooter() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.book,
      FeatherIcons.search,
      FeatherIcons.settings,
    ];

    return Container(
      height: 60,
      decoration: BoxDecoration(color: Color.fromARGB(255, 8, 8, 8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(4, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    menu_activo = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: menu_activo == index ? primario : blanco,
                ));
          }),
        ),
      ),
    );
  }
}
