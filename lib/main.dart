import 'package:flutter/material.dart';
import 'package:poaloungapp/component/MoneyBox.dart';
import 'package:poaloungapp/page/HomePage.dart';
import 'package:poaloungapp/page/Notification.dart';

//cJHugHajCG2EHCLbYSRfNWEIRtmT8FPG
void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _pageIndex = 0;
  List<Widget> pageIndex = <Widget>[
    HomePage(),
    Text(
      "ไม่พบรายการ",
      style: TextStyle(fontSize: 25),
    ),
    Text(
      "ไม่พบรายการ",
      style: TextStyle(fontSize: 25),
    ),
    Text("Logout"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 75,
          leading: IconButton(
            icon: Icon(
              Icons.notifications_active,
              size: 30,
              color: Colors.lightBlue,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NotificationPage();
              }));
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "ธนภัทร กองเงิน  ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 109, 109, 109),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "65309010013   ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 161, 161, 161),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 55,
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage(
                          "assets/images/333872259_212659451289327_6667504362722949136_n.jpg"),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [pageIndex.elementAt(_pageIndex)],
            ),
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment), label: 'info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book), label: 'phone'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              label: 'logout',
            ),
          ],
          unselectedIconTheme: IconThemeData(color: Colors.lightBlue),
          currentIndex: _pageIndex,
          selectedItemColor: Colors.cyan,
          onTap: (index) => setState(() {
            _pageIndex = index;
          }),
        ));
  }
}
