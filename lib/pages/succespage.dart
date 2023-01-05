import 'package:flutter/material.dart';

class Succespage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 15, right: 40),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 40)),
            Text(
              'Вітаю ви успішно зайшли.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
