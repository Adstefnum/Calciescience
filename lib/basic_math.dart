import 'package:flutter/material.dart';
import 'drawer.dart';

class BasicMath extends StatefulWidget {
 
BasicMathState createState() => BasicMathState();
 
}
 

class BasicMathState extends State<BasicMath> {

  String output = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  

Widget _btn(String text){
return Expanded( 
  child:MaterialButton(
    padding:EdgeInsets.all(24.0),
    onPressed: () {btnAct(text);},
    color: Colors.black,
    textColor: Colors.white,
    highlightColor:Colors.green,splashColor:Colors.blue,
    child:Text(text, 
    textAlign: TextAlign.center,
    style:TextStyle(color: Colors.white, fontSize:22.0, fontWeight:FontWeight.bold)),
    

              ));}

  btnAct(String text){
if (text == "AC"){
      setState(() {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
      });}

else if(text == "."){
 if(_output.contains(".")){
   return;
 }

 else{
   
      setState((){
        _output += text;
});
 }
}

else 
  if (text == "+" || text == "-" || text == "/" ||
  text == "x" ){
    num1 = double.parse(output); 
    operand = text;
    _output = "0";
}

else if(text == "="){

  num2 = double.parse(output);

  if(operand == "+"){
    _output = (num1+num2).toString();
  }

    if(operand == "-"){
    _output = (num1-num2).toString();
  }
 if(operand == "/"){
    _output = (num1/num2).toString();
  }

   if(operand == "x"){
    _output = (num1*num2).toString();
  }
  
  num1 = 0.0;
  num2 = 0.0;
}

    else{
         setState((){
        _output += text;
      });
      }
setState(() {
  output = double.parse(_output).toStringAsFixed(2);
});
}
  

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        title: Text("Calciescience"),
        centerTitle: true,
        backgroundColor: Colors.green,
       ),
       drawer: DrawerClass(), 
      body: Column(
        children:<Widget>[
         
            Container(
              alignment: Alignment.centerRight,
          child:Text(output, style:TextStyle(color: Colors.white,fontSize:48.0,
           fontWeight:FontWeight.bold))
          ),
          Expanded(child: Divider()),
          Row(
              children:<Widget>[
                _btn("7"),
                _btn("8"),
                _btn("9"),
                _btn("x"),
              ]
            ),
         
            Row(
              children:<Widget>[
                _btn("4"),
                _btn("5"),
                _btn("6"),
                _btn("/"),
              ]
            ),

            Row(
              children:<Widget>[
                _btn("1"),
                _btn("2"),
                _btn("3"),
                _btn("-"),
              ]
            ),

            Row(
              children:<Widget>[
                _btn("0"),
                _btn("00"),
                _btn("."),
                _btn("+"),
              ]
            ),

            Row(
              children:<Widget>[
                _btn("AC"),
                _btn("="),
              ]
            ),
            ]
            )
            );
         
  }
}