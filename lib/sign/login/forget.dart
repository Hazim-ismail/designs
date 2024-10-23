import 'package:flutter/material.dart';
import 'package:platformd/sign/login/sign.dart';


class Forget extends StatefulWidget {
  const Forget({ Key? key }) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 15,),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Phone Number/Email',
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                    ),
                  ),
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
                 InkWell(
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()));},
                        child: Container(
                          height: 50,width: 120,
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
          )
        ],
      ),
    );
  }
}