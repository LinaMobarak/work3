import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Welcome To', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),),
                  SizedBox(height: 10,),
                  Image.asset(""),
                  SizedBox(height: 10,),
                  Text(
                    "We are happy to see you",
                    style: TextStyle(
                        color:  Color(0xff828282),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  Text('Sign In',
                    style: TextStyle(color: Color(0xff29AAE1), fontSize: 20, fontWeight: FontWeight.w700),),
                  SizedBox(height: 8.0,),
                  Divider(
                    color: Colors.black,
                  height: 10,),
                  SizedBox(height: 20.0,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('  Email', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold,),),),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'Enter your email ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blue)
                      ),

                      prefixIcon: Icon(Icons.email_outlined, size: 25, color: Colors.black,),



                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text('  Password', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold,),),),
                  SizedBox(height: 5.0,),
                  TextFormField(
                  controller: pass,
                    validator: (value) {
                      if(value!.isEmpty){
                        return "password  empty";
                      }else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  decoration: InputDecoration(
                  labelText: 'Enter your password ',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue)
                  ),

                  prefixIcon: Icon(Icons.email_outlined, size: 25, color: Colors.black,),
                    suffixIcon: Icon(Icons.visibility_off_outlined, size: 25, color: Colors.black,),
                  ),





                  ),

                  SizedBox(height: 5.0,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('  Forgot Password ?', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                  ),

                  SizedBox(height: 20.0,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue, width: 1.5,
                      ),
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text('Sign In', style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w800),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white, width: 1.5,
                      ),
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text('Skip for now', style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w800),),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Text('Don\'t have an Account?', style: TextStyle(color: Color(0xff113857), fontWeight: FontWeight.bold, fontSize: 15),),
                  SizedBox(height: 5.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.blue,

                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),),
                    ),
                  ),




                ],
              ),
            ),
          ),
        ),
      ),

    );

  }


}