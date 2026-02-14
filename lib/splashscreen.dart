import 'package:flutter/material.dart';
import 'package:goldcalculate/goldcalculator.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context){
            return goldcalculator();
          }
      ));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/gold.png'),
            ),
          ),
          SizedBox(height: 20,),
          Center(child: Text('Gold Calculator',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))
        ],
      ),

    );
  }
}
