import 'package:flutter/material.dart';
import 'home_page.dart';
import 'intro_page.dart';
import 'signup_page.dart';
import 'forget_page.dart';
import 'package:sign_in_button/sign_in_button.dart';
class MyForm extends StatefulWidget {
  @override
  MyFormState createState() => MyFormState();
}
class MyFormState extends State<MyForm> {
  final GlobalKey_formKey = GlobalKey<FormState>();
  bool passenable=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Login',style: TextStyle(fontSize: 48,fontWeight:FontWeight.w500,color: Colors.black,fontFamily:'Poppins')),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.person),
                        hintText: 'Enter your name',
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>(ForgotClass()))) ;},
                          child: Text('Forgot Password ?',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      // height: 200,
                      width: MediaQuery.of(context).size.width,
                      //padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
                            child:  Text('Submit'),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 300,
                                    child: SignInButton(
                                      Buttons.google,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                      padding: EdgeInsets.symmetric(vertical: 5),
                                      text: "Sign up with Google",
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Align(
                                  alignment:Alignment.center,
                                  child: Container(
                                    width: 300,
                                    child: SignInButton(
                                      Buttons.facebookNew,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      text: "Sign up with Facebook",
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
            ),

            Positioned(

                bottom: 20,

                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Do not have account?',style: TextStyle(color: Colors.black45, fontSize: 20),),
                        InkWell(
                          onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup())) ;},
                          child: Text('Sign up',style: TextStyle(color: Colors.blueAccent, fontSize: 20)),
                        ) ,
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}