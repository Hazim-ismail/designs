import 'package:flutter/material.dart';
import 'package:platformd/sign/login/sign.dart';
import 'package:platformd/sign/login/step1.dart';


class Step2 extends StatefulWidget {
  const Step2({ Key? key }) : super(key: key);

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Create Account'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 15,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      
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
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      
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
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      
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
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      
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
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Step1()));},
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
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()));},
                        child: Container(
                          height: 50,width: 90,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text('Submit',style: TextStyle(color: Colors.white),),
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