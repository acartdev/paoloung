import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatefulWidget {
  final double total;
  final double room;
  final double amout;
  MoneyBox(this.total, this.room, this.amout, {super.key});

  @override
  State<MoneyBox> createState() => _MoneyBoxState(total, room, amout);
}

class _MoneyBoxState extends State<MoneyBox> {
  double total;
  double room;
  double amout;
  _MoneyBoxState(this.total, this.room, this.amout);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.lightBlue),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          const Row(
            children: [
              Text(
                "ยอดเงินทั้งหมด",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: 1.57,
                  child: const Icon(
                    Icons.sim_card,
                    size: 50,
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                    child: Text(
                  "${NumberFormat('#,###.##').format(total)}  บาท",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ))
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "ยอดเงินห้องคงเหลือ  ${NumberFormat('#,###.##').format(room)}  บาท",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "จำนวนนักศึกษาทั้งหมด  ${NumberFormat('#,###.##').format(amout)}  คน",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
