import 'package:flutter/material.dart';

class DeleteActivity extends StatefulWidget {
  const DeleteActivity({super.key});

  @override
  State<DeleteActivity> createState() => _DeleteActivityState();
}

class _DeleteActivityState extends State<DeleteActivity> {
  List<String> items = ['item1', 'item2', 'item3'];
  String? selected = "item1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ลบรายการ"),
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                height: 30,
              ),
              SizedBox(
                width: 360,
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    "ลบ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                ),
              )
            ],
          ),
        ));
  }
}
