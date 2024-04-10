import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.school,color: Colors.white,),
        backgroundColor: Color(0xff2C7865),
        title: Text(
          'Home Screen',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/detail');
        },
        child: Center(
          child: Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Color(0xff2C7865),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text(
              'Create Student List',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
