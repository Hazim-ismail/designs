import 'package:flutter/material.dart';
import 'package:platformd/pages/colors.dart';


class AppleProd extends StatefulWidget {
  @override
  _AppleProdState createState() => _AppleProdState();
}

class _AppleProdState extends State<AppleProd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: red,


      ),
      body: PageView(
        children: [
          Container(
            color: Colors.blueAccent,
            child: ListView(
              children: [

              ],
            )
          ),
          Container(
            child: ListView(
              children: [],
            ),
            color: white,
          ),
          Container(
            child: ListView(
              children: [],
            ),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
