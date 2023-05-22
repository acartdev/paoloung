import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "เพิ่มกิจกรรม",
            style: TextStyle(color: Colors.white),
          ),
          foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'ชื่อรายการ'),
                autofocus: true,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'จำนวนเงินที่ใช้ประมาณ'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    foregroundColor: Colors.lightBlue),
                onPressed: () {},
                child: const Text(
                  'เพิ่มรายการ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
