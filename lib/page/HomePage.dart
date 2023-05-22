import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:poaloungapp/component/MoneyBox.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:poaloungapp/component/MenuCom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: MoneyBox(1540.73, 1053, 26),
          ),
          Container(
              height: 100,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 233, 232, 232),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-0, 1),
                      blurRadius: 1,
                      spreadRadius: 4,
                      color: Color.fromARGB(76, 0, 0, 0),
                      inset: true,
                    )
                  ]),
              child: const Center(
                child: Icon(
                  Icons.check_circle,
                  size: 70,
                  color: Color.fromARGB(255, 52, 177, 56),
                ),
              )),
          Container(
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: MenuCom(),
            ),
          )
        ],
      ),
    );
  }
}
