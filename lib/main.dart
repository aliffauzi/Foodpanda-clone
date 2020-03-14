import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() =>
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Foodapp(),

      ),
    );

class Foodapp extends StatefulWidget {
  @override
  _FoodappState createState() => _FoodappState();
}

class _FoodappState extends State<Foodapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.user, color: Colors.redAccent)
        ),
        actions: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Deliver to:",
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),),
              SizedBox(width: 5),
              Text("Current Location", style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.red)),
              SizedBox(width: 50),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.hospital, color: Colors.redAccent,),
                  onPressed: () {})
            ],
          ),
        ],
      ),
      drawer: Drawer(),
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.5,
                        spreadRadius: 0.6,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                          icon: Icon(Icons.search), onPressed: () {}),
                      suffixIcon: IconButton(icon: Icon(
                          FontAwesomeIcons.slidersH), onPressed: () {},),
                      hintText: "e.g, Japanese, Burgers.....",
                      hintStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _boxMaker('assets/b.jpg'),
                        _boxMaker('assets/fr.jpg'),
                        _boxMaker('assets/p.jpg'),
                        _boxMaker('assets/pasta.jpg'),
                        _boxMaker('assets/pp.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Order again from", style: TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w800),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.1, top: 10),
                    child: Container(
                      height: 250,
                      width: 500,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          InkWell(child: _boxx(
                              "assets/d.jpg", "Delizia - Garden", "4.6",
                              "(505)"," Deserts,Cupcakes,Sweets,f...","RS. 59 minimun","Free Delivery"),
                            onTap: () {},),
                          _boxx("assets/do.jpg", "DunkinDounuts - Garden", "5.0",
                              "(200)"," Dounuts,Cupcakes,Sweets,f...","RS. 100 minimun","Free Delivery"),
                          _boxx("assets/brr.jpg", "Broadway Pizza - Garden", "4.6",
                              "(50)"," Deserts,Cupcakes,Sweets,f...","RS. 59 minimun","Free Delivery"),
                          _boxx("assets/sub.jpeg", "Subway - Garden", "4.6",
                              "(55)"," Deserts,Cupcakes,Sweets,f...","RS. 599 minimun","Free Delivery"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Featured",style: TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w800),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.1, top: 15),
                    child: Container(
                      height: 250,
                      width: 500,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _boxx("assets/pizza.jpg", "Pizza Hut - Garden", "5.0",
                              "(800)"," Pizza,cakes,Sweets,f...","RS. 500 minimun","Free Delivery"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}

Widget _boxMaker(image) {
  return AspectRatio(
    aspectRatio: 1,
    child: Container(
      height: 200,
      margin: EdgeInsets.only(right: 2, left: 11),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        //borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
    ),
  );
}

Widget _boxx(image, text, text2, text3,text4,text5,text6) {
  return AspectRatio(
    aspectRatio: 1.3,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15),
          height: 120,
          //width: 300,
          //color: Colors.black,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 1,
                  color: Colors.grey
              ),
            ],
          ),
        ),
        Container(
          height: 130,
          margin: EdgeInsets.only(left: 15),
          width: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                spreadRadius: -1,
                color: Colors.grey,
              ),
            ],
            border: Border.all(
              color: Colors.white12,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Text(text, style: TextStyle(fontSize: 17,
                        color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(width: 40),
                    Icon(Icons.star, color: Colors.blue),
                    SizedBox(width: 1),
                    Text(text2),
                    SizedBox(width: 1),
                    Text(text3),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text(text4,style: TextStyle(fontSize: 18,
  color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Text(text5,style: TextStyle(fontSize: 16,
  color: Colors.black, fontWeight: FontWeight.w800),),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text(text6,style: TextStyle(fontSize: 15,
  color: Colors.black, fontWeight: FontWeight.w800),),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
