import 'package:flutter/material.dart';
import 'package:platformd/pages/colors.dart';


class Type extends StatelessWidget {
  final String typeName;


  Type({
    required this.typeName,

});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(aspectRatio: 3/1,
      child: Container(

        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(typeName,style: TextStyle(fontSize: 15,color: Colors.white),),
        ),
      ),
      );

  }
}



class Type2 extends StatelessWidget {
  final String typeName2;

  Type2({required this.typeName2});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2/1,
      child: Container(

        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(typeName2,style: TextStyle(fontSize: 15,color: Colors.white),),
        ),
      ),
    );
  }
}
