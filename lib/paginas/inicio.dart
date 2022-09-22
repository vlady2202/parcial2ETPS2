import 'package:flutter/material.dart';
import 'package:parcial2a/paginas/principal.dart';

class parcial2a extends StatelessWidget {
  const parcial2a({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
