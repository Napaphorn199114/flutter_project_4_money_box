import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  var app = MyApp();
  runApp(MyApp());
}

// สร้าง wedget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน",
            style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold)
          )
        ),
        body: Padding(
          //เอา padding มาครอบเพื่อให้มีระยะห่างจากขอบ
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดคงเหลือ",10000, Colors.green,120 ),
              SizedBox(height: 5,),
              MoneyBox("รายรับ", 15000, Colors.pink, 100),
              SizedBox(height: 5,),
              MoneyBox("รายจ่าย", 5000.58, Colors.orange, 100),
              SizedBox(height: 5,),
              MoneyBox("ค้างชำระเงิน", 1200, Colors.blue, 100)
            ]
          )
        )
    );
  }
}
