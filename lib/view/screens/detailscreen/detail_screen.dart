import 'package:core_flutter_exam_2/utils/list.dart';
import 'package:core_flutter_exam_2/view/screens/adddetailscreen/add_data_screen.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2C7865),
        leading: Icon(Icons.school,color: Colors.white,),
        title: Text(
          'Add Data Screen',
          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 15,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
              backgroundColor: Color(0xff2C7865),
            ),
            textFormBox('Enter name',txtName),
            textFormBox('Enter std',txtStd),
            textFormBox('Enter grid',txtGrid),
            SizedBox(height: 50,),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  studentName.add(txtName.text);
                  studentStd.add(txtStd.text);
                });
                Navigator.of(context).pushReplacementNamed('/add');
              },
              child: Text('Submit',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
