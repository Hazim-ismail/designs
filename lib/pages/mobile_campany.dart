
import 'package:flutter/material.dart';
import 'package:platformd/pages/apple_pages/apple_products.dart';
import 'package:platformd/pages/colors.dart';
import 'package:platformd/pages/home.dart';
import 'package:platformd/pages/samsung_pages/samsung_products.dart';
import 'package:platformd/util/device_tile.dart';
//import 'package:platformd/util/markers.dart';

class MobileC extends StatefulWidget {
  @override
  _MobileCState createState() => _MobileCState();
}

class _MobileCState extends State<MobileC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: red,
        leading: IconButton(onPressed: (){
         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home()), (route) => false);},

            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text('Choose the marker',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Container(
              height: 700 ,
              child: ListView(
                children: [

                  Container(
                  height: 500,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 7,
                      childAspectRatio: 1.00
                      ),
                        children: [
                          InkWell(
                            onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SamProducts()));},
                              child: camponyTile(image: 'lib/plat/Samsung.png')),
                          InkWell(
                            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppleProd()));},
                              child: camponyTile(image: 'lib/plat/apple.png')),
                          InkWell(
                              onTap: (){},
                              child: camponyTile(image: 'lib/plat/Huawei.png')),
                          InkWell(
                              onTap: (){},
                              child: camponyTile(image: 'lib/plat/sony.jpg')),
                          InkWell(
                              onTap: (){},
                              child: camponyTile(image: 'lib/plat/nokia.jpeg')),
                        ],


                        ),

              )




                ],
              ),
            ),



    ])));
  }
}
