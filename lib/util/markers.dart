import 'package:flutter/material.dart';

class SingleMarker extends StatelessWidget {
  final markName;
  final markPic;

  SingleMarker({
    this.markName,this.markPic
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: markName,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                footer: Container(
                  height: 50,
                  color: Colors.white70,
                  child: ListTile(
                    title: Center(child: Text(markName)),
                  ),
                ), child: Image.asset(markPic),),
            ),
          )),
    );
  }
}




class Marker extends StatefulWidget {
  @override
  _MarkerState createState() => _MarkerState();
}

class _MarkerState extends State<Marker> {
  var markerList =[
    {
      "name":"Samsung",
      "picture":"lib/plat/Samsung.png",
    },
    {
      "name":"Apple",
      "picture":"lib/plat/apple.png"
    },
    {
      "name":"Huawei",
      "picture":"lib/plat/Huawei.png"
    },
    {
      "name":"sony",
      "picture":"lib/plat/sony.jpg"
    },
    {
      "name":"Nokia",
      "picture":"lib/plat/nokia.jpeg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(


      itemCount: markerList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 9,mainAxisSpacing: 9),
        itemBuilder: (BuildContext context, int index){
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: SingleMarker(

          markName: markerList[index]['name'],
          markPic: markerList[index]['picture'],
        ),
      );

    }


        );
  }
}
