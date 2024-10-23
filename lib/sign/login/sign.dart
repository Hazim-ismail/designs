import 'package:flutter/material.dart';
import 'package:platformd/pages/home.dart';
import 'package:platformd/sign/login/forget.dart';
import 'package:platformd/sign/login/step1.dart';


class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Text('Sign In',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      suffixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                    ),
                  )
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.lock),
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
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){Padding(
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
                        onTap: (){Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Step1()), (route) => false);},
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
                );},
                    child: InkWell(
                      onTap: (){Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home()), (route) => false);},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        
                        ),
                        child: Center(
                          child: Text('Sign In',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Step1()));},
                      child: Text('Create Account')),
                      InkWell(onTap:(){Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Forget()), (route) => false);},
                      child: Text('Forget Password')),
                    ],
                  ),
                ),

                SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25),
                      
                      ),
                      child: Center(
                        child: Text('Sign In With Google',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ),
                ),
                
                
                
                
                ],
                
                
            ),
          )
        ],
      ),
    );
  }
}