import 'package:flutter/material.dart';

class DeviceTile extends StatelessWidget {
  final String imagePath;
  final String deviceName;


  DeviceTile({
    required this.imagePath,
    required this.deviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0, bottom: 23),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade300,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imagePath),
            ),
            SizedBox(height: 5,),
            Text(deviceName, style: TextStyle(fontSize: 18),),

          ],
        ),
      ),
    );
  }
}


Widget camponyTile({image}) {
  return AspectRatio(aspectRatio: 4/2,
  child: Container(
      height:300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(child: Image.asset(image,),
         borderRadius: BorderRadius.circular(30),),
          ],
          ),
  ));









}
