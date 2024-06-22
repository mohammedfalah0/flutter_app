// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class detals extends StatefulWidget {
  final data;
    const detals({super.key, this.data});

    @override
  State<detals> createState() => _detalsState(); 
}
// ignore: duplicate_ignore
// ignore: camel_case_types
class _detalsState extends State<detals>{
  
@override 
    Widget build(BuildContext context) { 
      return  Scaffold(
        bottomNavigationBar: BottomNavigationBar(
      iconSize: 40,
      selectedItemColor: Colors.orange,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.balance_sharp), label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "a"), 
    ] ),

        endDrawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(Icons.star),
                Text("   shoop"),
                Text("  real" , style: TextStyle(color: Color.fromARGB(255, 235, 125, 15)) ),

          ],),
          
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        
        body: ListView(children: [ Image.asset(widget.data['image']),
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Text(widget.data['title'], 
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, 
          fontSize: 20),)
          ),

          Container(
          padding: const EdgeInsets.only(top: 2),
          child: Text(widget.data['suble'], 
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, 
          fontSize: 20),)
          ),
          Container(
          padding: const EdgeInsets.only(top: 2),
          child: Text(widget.data['price'], 
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, 
          fontSize: 20 , color: Colors.orange),)
          ),

          Container(
            padding: const EdgeInsets.only(top: 20),
            child: const Text("color  1   5    6 " ,textAlign: TextAlign.center ,)),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),

              child: MaterialButton(
                color: const Color.fromARGB(255, 54, 244, 63),
                textColor: const Color.fromARGB(255, 28, 76, 221),
                onPressed: (){
                
              }, child: const Text("add car"),),
            )
  
          ],
        ),


      );       
} }