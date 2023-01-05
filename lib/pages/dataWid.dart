import 'package:flutter/material.dart';

// импорт май пакет

// ! Создаем  состояния здесь
class MyWidget extends StatefulWidget {
  // надо изменит эту констанут и понять как это работает
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DataWid extends StatelessWidget {
  String input1 = "";
  String input2 = "";

  void _input1check(value) {
    input1 = value;
  }

  void _input2check(value) {
    input2 = value;
  }

  // void _maincheck() {}

  @override
  Widget build(BuildContext context) {
    //! попробовать зделать проверку на наличия правильной почти

    //  *если нет вибить красное поле
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 100, left: 15, right: 40),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 40)),
                TextField(
                  onChanged: ((val) => _input1check(val)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      hintText: 'Please enter your email'),
                  style: TextStyle(
                      color: Color.fromARGB(255, 23, 140, 208), fontSize: 18),
                ),
                // ? тут
                Padding(padding: EdgeInsets.only(top: 40)),
                TextField(
                  onChanged: ((val) => _input2check(val)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      hintText: 'Please enter your password'),
                  style: TextStyle(
                      color: Color.fromARGB(255, 23, 140, 208), fontSize: 18),
                ),
                Padding(padding: EdgeInsets.only(top: 40)),

                // !передача даных через ко
                // ! конструктор очень должно получится

                // Mainbutton(input1, input2),
                // !!!! ПЕРЕДАТЬ
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue),
                      )),
                      
                      // fixedSize: MaterialStateProperty.all(Size(10, 10)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(30))),

                  child: Text('Send data'),
                  // style:styl
                  //   fontSize: 16.0,
                  //   color: Color(0xff1E0B11),
                  //   fontWeight: FontWeight.w600,
                  // ),
                  // style: ,
                  // style: ElevatedButton.styleFrom(
                  //     backgroundColor: Color.fromARGB(96, 38, 12, 202),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(30.0),
                  //     )),
                  onPressed: () {
                    if (input1 == "admin" && input2 == "123456") {
                      // Здесь переход на страницу успешно
                      Navigator.pushNamed(context, "/success");
                      //? переход на другую страницу
                    } else {
                      print("input1== $input1");
                      print("input2== $input2");
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Внимания'),
                          content: Text(
                              'Ваш Email или ваш  пароль являються не правильний. \n Попитайтесь еще раз '),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            )));
  }
}
