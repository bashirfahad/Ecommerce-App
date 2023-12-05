import 'package:flutter/material.dart';
import 'package:nike/pages/home_page.dart';
import 'intro_page.dart';
import  'package:passwordfield/passwordfield.dart';


class Signup extends StatefulWidget {

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool passenable=true;
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Register',style: TextStyle(fontSize: 48,fontWeight:FontWeight.w500,color: Colors.black,fontFamily:'Poppins')),
              TextFormField(
                decoration:  InputDecoration(
                    icon: const Icon(Icons.email_outlined),
                    hintText: ('Enter Your Email'),
                    labelText: ('Email')
                ),
              ),

              TextField(
                obscureText: passenable,
                decoration: InputDecoration(
                    icon: Icon(Icons.password_outlined),
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                    suffix: IconButton(onPressed: (){
                      setState(() {
                        if(passenable){
                          passenable=false;
                        }
                        else{
                          passenable=true;
                        }
                      });
                    },
                      icon: Icon(passenable==true?Icons.remove_red_eye:Icons.password),
                    )

                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    hintText: 'Enter Your Mobile Number',
                    labelText: 'Phone Number'
                ) ,
              ),
              Container(
                padding:  EdgeInsets.only(left: 125.0, top: 40.0),
                child:  ElevatedButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>(HomePage()))) ;},
                  child: Text('SignUp'),
                  style: ElevatedButton.styleFrom( primary: Colors.black,foregroundColor: Colors.white,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),

                ),
              ),
            ],

          ),

        ) ,

      ),
    );
  }
}
