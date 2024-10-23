import 'package:flutter/material.dart';
import 'package:platformd/pages/colors.dart';
import 'package:platformd/pages/home.dart';
import 'package:platformd/util/device_tile.dart';

class LaptopC extends StatefulWidget {
  @override
  _LaptopCState createState() => _LaptopCState();
}

class _LaptopCState extends State<LaptopC> {
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
            SizedBox(height: 10,),
            Container(
              height: 700,
              child: ListView(
                children: [
                  Container(
                    height: 700,
                    child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 7,mainAxisSpacing: 7,),
                      children: [
                        InkWell(
                            onTap:(){},
                            child: camponyTile(image: 'lib/plat/hp.png')),
                        InkWell(
                            onTap: (){},
                            child: camponyTile(image: 'lib/plat/apple.png')),
                        InkWell(
                            onTap: (){},
                            child: camponyTile(image: 'lib/plat/toshiba.png')),
                        InkWell(
                            onTap: (){},
                            child: camponyTile(image: 'lib/plat/acer.png')),

                      ],


                    ),

                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
