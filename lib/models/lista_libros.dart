import 'package:flutter/material.dart';
import 'package:examen1/services/utils.dart';
import 'package:examen1/models/leer_libros.dart';

Widget listLibros() {
  return FutureBuilder(
      future: equiposReadFile.getLibros(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: listItems(snapshot.data, context),
          );
        } else {
          return const CircularProgressIndicator();
        }
      });
}
