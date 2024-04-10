import 'package:core_flutter_exam_2/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

TextEditingController txtName = TextEditingController();
TextEditingController txtStd = TextEditingController();
TextEditingController txtGrid = TextEditingController();

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2C7865),
        leading: Icon(
          Icons.school,
          color: Colors.white,
        ),
        title: Text(
          'Student List',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: ListView.builder(
          itemBuilder: (context, index) => showDataBox(index),
          itemCount: studentName.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff2C7865),
        onPressed: () {
          Navigator.of(context).pushNamed('/detail');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget showDataBox(int index) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 70,
              width: 340,
              // color: Colors.grey,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                title: Text(
                  '${studentName[index]}',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                subtitle: Text(
                  '${studentStd[index]}',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                trailing: InkWell(
                  onTap: () {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AlertDialog(
                              title: Text("Update Dialog"),
                              content: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      label: Text('Enter Name'),
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      label: Text('Enter std'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextButton(
                                    child: Text("Update"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text("Cancle"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            ),

                      );
                    });
                  },
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  studentName.removeAt(index);
                  studentStd.removeAt(index);
                });
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
