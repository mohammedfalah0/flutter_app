
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/sd.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
  State<HomePage> createState() => _HomePageState(); 
}
class _HomePageState extends State<HomePage>{

  List catagry = [
    {"iconname": Icons.laptop , "title":"sr"},
    {"iconname": Icons.architecture_rounded , "title":"a"},
    {"iconname": Icons.macro_off , "title":"laptop"},
    {"iconname": Icons.search , "title":"laptop"},
    {"iconname": Icons.search , "title":"car"},
    {"iconname": Icons.architecture_rounded , "title":"a"},
    {"iconname": Icons.macro_off , "title":"laptop"},
    {"iconname": Icons.search , "title":"laptop"},
    {"iconname": Icons.search , "title":"car"},
    {"iconname": Icons.laptop , "title":"s"},
    {"iconname": Icons.architecture_rounded , "title":"a"},
    {"iconname": Icons.macro_off , "title":"laptop"},
    {"iconname": Icons.search , "title":"laptop"},
    {"iconname": Icons.search , "title":"car"},
    {"iconname": Icons.architecture_rounded , "title":"a"},
    {"iconname": Icons.macro_off , "title":"laptop"},
    {"iconname": Icons.search , "title":"laptop"},
    {"iconname": Icons.search , "title":"car"},
  ];

  List iteme = [
    {"image": "images/2.jpeg" ,
     "title":"hadfo" ,
     "suble":"s",
     "price":"250\$"},

    {"image": "images/1.jpeg" ,
     "title":"realmadread" ,
     "suble":"s",
     "price":"250\$"},

     {"image": "images/3.jpeg" ,
     "title":"hadfon" ,
     "suble":"s",
     "price":"250\$"},

     {"image": "images/2.jpeg" ,
     "title":"hadfon" ,
     "suble":"s",
     "price":"250\$"},

     {"image": "images/2.jpeg" ,
     "title":"mohammed salah" ,
     "suble":"s",
     "price":"250\$"},

     {"image": "images/1.jpeg" ,
     "title":"realmadread" ,
     "suble":"s",
     "price":"250\$"},

     {"image": "images/3.jpeg" ,
     "title":"hadfon" ,
     "suble":"s",
     "price":"250\$"},

     {"image": "images/1.jpeg" ,
     "title":"hadfon" ,
     "suble":"s",
     "price":"250\$"},

     {"image": "images/3.jpeg" ,
     "title":"mohammed salah" ,
     "suble":"s",
     "price":"250\$"},

      {"image": "images/3.jpeg" ,
     "title":"mohammed salah" ,
     "suble":"s",
     "price":"250\$"},

   
  ];

@override 
Widget build(BuildContext context) { 
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      iconSize: 40,
      selectedItemColor: Colors.orange,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.balance_sharp), label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "a"), 
    ] ),

    body:  
  
      Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
           Row(children: [
            Expanded(child: TextFormField(    
              decoration: InputDecoration(
             prefixIcon: const Icon( Icons.search) ,
              hintText: "search",
              border: InputBorder.none ,
              fillColor: Colors.grey[200],
              filled: true,
              
              ),   
            ),),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(Icons.menu,size: 40,),
            )
        ], ),

        Container(height: 20, ),

        // ignore: avoid_unnecessary_containers
        Container(child: const Text("categary"  , style: TextStyle(color: Colors.black ,fontSize: 30 , fontWeight: FontWeight.bold, fontFamily: "Cairo" )),),

        Container(height: 20),

        // ignore: sized_box_for_whitespace
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catagry.length,
            itemBuilder: (context, i) {
              return  Container(
                 margin: const EdgeInsets.only(right: 10),
                child: Column(   
                children: [ Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(195, 136, 133, 133),
                      borderRadius: BorderRadius.circular(100)
                  ),
                child: Icon(catagry[i]['iconname'] , size: 40, ),
                padding: const EdgeInsets.all(10),
                ),
                Text(catagry[i]['title'] ,
                 style: TextStyle(color: Colors.grey[800] ,fontWeight: FontWeight.bold )),
                            ],),
              );
            },  
          ),
        ),

        // Container(height: 20, ),

        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Text("Best selling"  , style: TextStyle(color: Colors.black ,fontSize: 30 , fontWeight: FontWeight.bold ,fontFamily: "Cairo")),),


        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: 
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250), 
          
          itemCount: iteme.length ,
          itemBuilder: (context, i) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> detals(data:iteme[i])));

            }  ,
            child: Card( 
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                width: 200,
                color: const Color.fromARGB(255, 223, 21, 21),
                child: Image.asset(iteme[i]['image'] , height: 130,fit: BoxFit.fill,),
              ),
              Text(iteme[i]['title'] ,
              style: const TextStyle(color: Colors.black , fontWeight: FontWeight.bold , ),),
              Text(iteme[i]['suble'] ,
              style: const TextStyle(color: Colors.grey  ),),
              Container(height: 10,),
              Text(iteme[i]['price'] ,
              style: const TextStyle(color: Color.fromARGB(255, 246, 4, 4) , fontWeight: FontWeight.bold),),
            ],),),
          );
          },
        ),
 


        ]  ),
    ),
    );
  }}

  