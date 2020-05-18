import 'package:flutter/material.dart';

class DrawerClass extends StatelessWidget{
   Widget drawerBtn(String text, icon){
    return ListTile(
      title:Text(text),
      leading: Icon(icon),
    );
  }
Widget build(BuildContext context){
  return Drawer(
      child: ListView(
        children: <Widget>[
          drawerBtn("Standard",Icons.assignment),
          drawerBtn("Scientific",Icons.change_history),
          drawerBtn("Programmer",Icons.code),
          drawerBtn("Date",Icons.calendar_today),
          drawerBtn("Converter",Icons.compare_arrows),
          drawerBtn("Finance",Icons.account_balance_wallet),
        ]),
  );
}}