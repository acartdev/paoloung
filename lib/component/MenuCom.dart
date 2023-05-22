import 'package:flutter/material.dart';
import 'package:poaloungapp/page/AddActivity.dart';
import 'package:poaloungapp/page/DeleteActivity.dart';
import 'package:poaloungapp/page/EditActivity.dart';

class MenuCom extends StatelessWidget {
  const MenuCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          children: [
            Text(
              "เครื่องมือการจัดการ",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          height: 40,
          thickness: 1,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AddForm();
                    }));
                  },
                  icon: Icon(
                    Icons.assignment_add,
                    size: 30,
                  ),
                ),
                Text("เพิ่มกิจกรรม")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.edit_calendar, size: 30),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EditActivity();
                    }));
                  },
                ),
                Text("แก้ไขกิจกรรม")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.delete_forever, size: 30),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DeleteActivity();
                    }));
                  },
                ),
                Text("ลบกิจกรรม")
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.add_task_outlined, size: 30),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            child: AlertDialog(
                              title: Text("ต้องการเรียกเก็บเงินห้องหรือไม่"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "ยกเลิก",
                                      style: TextStyle(color: Colors.amber),
                                    )),
                                TextButton(onPressed: null, child: Text("ตกลง"))
                              ],
                            ),
                          );
                        });
                  },
                ),
                Text("เก็บเงินห้อง")
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.edit_document,
                  size: 33,
                ),
                Text("รายรับ-จ่าย")
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.receipt_long,
                  size: 33,
                ),
                Text("เพิ่มรายจ่าย")
              ],
            ),
          ],
        )
      ]),
    );
  }
}
