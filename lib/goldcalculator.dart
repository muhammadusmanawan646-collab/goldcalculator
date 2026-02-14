import 'package:flutter/material.dart';
class goldcalculator extends StatefulWidget {
  const goldcalculator({super.key});

  @override
  State<goldcalculator> createState() => _goldcalculatorState();
}

class _goldcalculatorState extends State<goldcalculator> {
  double totalPrice=0.0;
  TextEditingController tolaPriceController=TextEditingController();
  TextEditingController tolaQuantityController=TextEditingController();
  TextEditingController gramQuantityController=TextEditingController();
  TextEditingController retiQuantityController=TextEditingController();
  TextEditingController pointQuantityController=TextEditingController();
  String clear='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(backgroundColor:Colors.yellow, onPressed: ()
      {
        tolaPriceController.text=clear;
        tolaQuantityController.text=clear;
        gramQuantityController.text=clear;
        retiQuantityController.text=clear;
        pointQuantityController.text=clear;
        totalPrice=0;
        clear='';
        setState(() {

        });
      },
        child: Icon(Icons.refresh,color: Colors.black,),),

      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Gold Calculator',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.yellow)
            ),
            child:
            TextFormField(
              controller: tolaPriceController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Tola Price',
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.yellow)
            ),
            child: TextFormField(
              controller: tolaQuantityController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Tola',
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.yellow)
            ),
            child: TextFormField(
              controller: gramQuantityController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter  Gram',
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.yellow)
            ),
            child: TextFormField(
              controller: retiQuantityController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter  Reti',
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.yellow)
            ),
            child: TextFormField(
              controller: pointQuantityController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter  Point',
                hintStyle: TextStyle(color: Colors.yellow),
              ),
            ),
          ),


          Text('Total Price=$totalPrice',style: TextStyle(color: Colors.white),),
          Text('$clear',style: TextStyle(color: Colors.red),),

          Container(
            margin: EdgeInsets.all(10),
            height: 30,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child:
            TextButton(onPressed: (){
              if(tolaPriceController.text=='')
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Enter Tola Price')));
                setState(() {

                });
              }
              else
              {
                if(tolaQuantityController.text==''&&  gramQuantityController.text==''&& retiQuantityController.text=='' && pointQuantityController.text=='')
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Enter At Least 1-Field')));
                  setState(() {

                  });
                }
                else
                {
                  // Tola Quantity
                  if(tolaQuantityController.text=='')
                  {
                    tolaQuantityController.text='0';
                  }
                  else{
                    clear='';
                  }
                  //Gram Quantity
                  if(gramQuantityController.text=='')
                  {
                    gramQuantityController.text='0';
                  }
                  else{
                    clear='';
                  }
                  // Reti Quantity
                  if(retiQuantityController.text=='')
                  {
                    retiQuantityController.text='0';
                  }
                  else{
                    clear='';
                  }
                  // Point Quantity
                  if(pointQuantityController.text=='')
                  {
                    pointQuantityController.text='0';
                  }
                  else{
                    clear='';
                  }


                  double tolaPrice=double.parse(tolaPriceController.text);
                  double tolaQuantity=double.parse(tolaQuantityController.text);
                  double gramQuantity=double.parse(gramQuantityController.text);
                  double retiQuantity=double.parse(retiQuantityController.text);
                  double pointQuantity=double.parse(pointQuantityController.text);

                  double pricePerGram=tolaPrice/12;
                  double pricePerReti=tolaPrice/96;
                  double pricePerPoint=tolaPrice/350;
                  double totalPointPrice=pointQuantity*pricePerPoint;
                  double totalRetiPrice=retiQuantity*pricePerReti;
                  double totalGramPrice=gramQuantity*pricePerGram;
                  double totalTolaPrice=tolaQuantity*tolaPrice;
                  totalPrice=totalTolaPrice+totalGramPrice+totalRetiPrice+totalPointPrice;
                  setState(() {

                  });
                }
              }
            },
              child: Text('Result',style: TextStyle(color: Colors.black),),),
          ),



        ],),
    );
  }
}
