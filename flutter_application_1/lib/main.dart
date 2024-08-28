// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/home_page.dart';
import 'package:flutter_application_1/presentation/tela_inicial.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(

    initialRoute: '/',
    routes: {
      '/': (context) => TelaInicial(),
      '/home': (context) => HomePage(),
    }
  ));
}