import 'dart:convert' as convert;

import 'package:flutter/services.dart';
import 'package:examen1/models/informacion.dart';

//Estructura de la clase
class _EquiposReadFile {
  //READ
  Future<List<Data>> getLibros() async {
    final dataAssetBundle = await rootBundle.loadString('assets/data.json');
    List<dynamic> dataListJson = convert.jsonDecode(dataAssetBundle);
    return dataListJson.map((e) => Data.fromJson(e)).toList();
  }
}

//Instancia de la clase
final equiposReadFile = _EquiposReadFile();
