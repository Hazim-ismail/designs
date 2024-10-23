
import 'package:flutter/material.dart';
import 'package:platformd/pages/add_orders.dart';
import 'package:platformd/pages/colors.dart';
import 'package:platformd/pages/laptop_campany.dart';
import 'package:platformd/pages/mobile_campany.dart';
import 'package:platformd/util/device_tile.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    

      drawer: Drawer(
        
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Full Name'),
             accountEmail: Text('Gmail'),
             currentAccountPicture: GestureDetector(
               child: CircleAvatar(
                 backgroundColor: Colors.blueAccent,
                 child: Icon(Icons.person, color: Colors.white,),
               ),
             ),
             decoration: BoxDecoration(
               color: Colors.red
             ),
             ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Accout'),
                leading: Icon(Icons.account_box,color: Colors.red,),
                
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
                
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.greenAccent,),
                
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.blue,),
                
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout,color: Colors.grey,),
                
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Platform devices'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(child: IconButton(
          onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddOrders()));},
           icon: Icon(Icons.add_shopping_cart))),),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(child: IconButton(
          onPressed: (){},
           icon: Icon(Icons.notifications))),),
          
        ],
        backgroundColor: red,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(

          children: [
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Chosse your device', style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),

               Container(

                 height: 50,
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),

                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(18)
                ),

                  child: TextField(

                    decoration: InputDecoration(
                      hintText: 'Find your device.....',
                       suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                  ),
                ),
              ),

            SizedBox(height: 15,),
            Container(
              height: 265,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => MobileC()));},
                      child: DeviceTile(imagePath: 'lib/plat/mobile.jpg', deviceName: 'Phones')),

                  InkWell(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => LaptopC()));},
                      child: DeviceTile(imagePath: 'lib/plat/laptop.png', deviceName: 'Laptops')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
