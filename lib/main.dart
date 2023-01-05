import 'package:flutter/material.dart';

import 'package:fluttervscod/pages/dataWid.dart';
import 'package:fluttervscod/pages/succespage.dart';

void main() {
  runApp(MaterialApp(
    title: 'DDDD',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      
      
    ),

    // ? Для показания начального пути
    // initialRoute: '/success',

    // ? проблеми начались после дарт initial state

    routes: {
      '/': (context) => DataWid(),
      '/success': (context) => Succespage(),
    },

    // ! home это начальная страница
    // Это зделаний роутер
    // специально для перехода между страницами сейчас здесь есть только главная страница
    //! основное окно которое будет указиватся
  ));
}
