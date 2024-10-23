import 'package:flutter/material.dart';
import 'package:platformd/sign/login/sign.dart';
import 'package:platformd/sign/login/step2.dart';

class Step1 extends StatefulWidget {
  const Step1({ Key? key }) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Create Account'),
      ),

      body: ListView(
        children: [
          SizedBox(height: 15,),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                    ),
                  )
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                    ),
                  )
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Campony Name',
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                    ),
                  )
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Address',
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                    ),
                  )
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()));},
                        child: Container(
                          height: 50,width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text('Back',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Step2()));},
                        child: Container(
                          height: 50,width: 90,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text('Next',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          )
        ],
      ),
      
    );
  }
}