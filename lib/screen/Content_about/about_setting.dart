import 'package:flutter/material.dart';
import 'package:metiz_cinema/screen/about.dart';

class aboutSetting extends StatefulWidget {
  const aboutSetting({Key? key}) : super(key: key);

  @override
  State<aboutSetting> createState() => _aboutSettingState();
}

class _aboutSettingState extends State<aboutSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => About())), icon: Icon(Icons.arrow_back)),
        title: Text("ĐIỀU KHOẢN VÀ GIAO DỊCH", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14
        ),
        ),
      ),

    );
  }
}
