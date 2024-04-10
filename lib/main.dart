import 'package:core_flutter_exam_2/view/screens/adddetailscreen/add_data_screen.dart';
import 'package:core_flutter_exam_2/view/screens/detailscreen/detail_screen.dart';
import 'package:core_flutter_exam_2/view/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Screens());
}

class Screens extends StatelessWidget {
  const Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home' : (context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
        '/add' : (context) => DataScreen(),
      },
    );
  }
}

