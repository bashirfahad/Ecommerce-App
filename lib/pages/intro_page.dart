import 'package:flutter/material.dart';

import 'home_page.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("assets/logo.png",height: 248,),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Just Do It ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(
                height: 24,
              ),
              Text("Brand new sneakers and custom kicks with premium quality",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey),textAlign: TextAlign.center,),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                        child: Text("Shop Now",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
