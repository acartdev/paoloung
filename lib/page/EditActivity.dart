import 'package:flutter/material.dart';

class EditActivity extends StatefulWidget {
  const EditActivity({super.key});

  @override
  State<EditActivity> createState() => _EditActivityState();
}

class _EditActivityState extends State<EditActivity> {
  List<String> items = ['item1', 'item2', 'item3'];
  String? selected = "item1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แก้่ไขกิจกรรม"),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          SizedBox(
            width: 360,
            child: DropdownButtonFormField<String>(
                value: selected,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 20),
                        )))
                    .toList(),
                onChanged: (item) => setState(() {
                      selected = item;
                    })),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "แก้ไขชื่อรายการ"),
                autofocus: true,
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: "แก้ไขจำนวนเงินที่ใช้ประมาณ"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "แก้ไขรายการ",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    foregroundColor: Colors.lightBlue),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
