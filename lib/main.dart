
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'flutter_ui_challenge1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(backgroundColor:Color(0xff1C1A29),
        body: Stack(
          children: [
            Container(
              width: double.maxFinite,
              child: Image.asset('assest/filmimage.jpg',
                fit: BoxFit.fitHeight,
                height: 258,

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30),
              child: Align(alignment: Alignment.topLeft , child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace,size: 30,),color: Colors.white,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30),
              child: Align(alignment: Alignment.topRight , child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 30,),color: Colors.white,)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 225,left: 300),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.play_arrow,color: Colors.white70,size: 40,),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromRadius(35),
                  primary: Color(0xff251977),
                  shape: CircleBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('RATU ILMU HITAM',style: TextStyle(
                    fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star,color: Colors.amber,size: 20,),
                        Text('8,9 / 10 from IMDb', style: TextStyle(color: Colors.white60),),

                      ],),),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        filmType('Horror'),
                        filmType('Drama')
                      ],),),



                  Padding(
                    padding: const EdgeInsets.only(top: 40,bottom: 8.0),
                    child: Row(
                      children: [
                        Image.asset('assest/filmimage2.jpeg',height: 173,width: 103,),
                        Container(
                          height: 120,
                          margin: EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Director',style: TextStyle(color: Colors.white70),),
                                  Text('Writer',style: TextStyle(color: Colors.white70),),
                                  Text('Duration',style: TextStyle(color: Colors.white70),),
                                  Text('Rating',style: TextStyle(color: Colors.white70),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(': Kimo Stamboel',style: TextStyle(color: Colors.white70),),
                                    Text(': Jiko Anwar',style: TextStyle(color: Colors.white70),),
                                    Text(': 1 hour 39 minutes(s)',style: TextStyle(color: Colors.white70),),
                                    Text(': D(17+)',style: TextStyle(color: Colors.white70),),

                                ],),
                              )],
                          ),)
                      ],),
                  ),

                  Container(
                    height: 40,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.0),
                        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.8)),
                      ),
                      child: TabBar(
                        indicatorColor: Color(0xff251977),
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs:[
                        Container(alignment: Alignment.center,width: double.maxFinite,height: double.maxFinite,child: Text('Schedule',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        Container(alignment: Alignment.center,width: double.maxFinite,height: double.maxFinite,child: Text('Synopsis',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      ]),),),

                 Container(
                   height: 65,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: [
                       scheduleDay('20 Nov', 'WED', Color(0xff251977)),
                       scheduleDay('21 Nov', 'THU', Color(0xff38354B)),
                       scheduleDay('22 Nov', 'FRI', Color(0xff38354B)),
                       scheduleDay('23 Nov', 'SAT', Color(0xff38354B)),
                       scheduleDay('24 Nov', 'SUN', Color(0xff38354B)),
                       scheduleDay('25 Nov', 'MON', Color(0xff282633)),
                       scheduleDay('26 Nov', 'TUS', Color(0xff282633)),
                     ],),),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Select Cinema',style: TextStyle(color: Colors.white70),),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      isExpanded: true,
                      hint: Text('Cinema XXI Ambarukmo Plaza',style: TextStyle(color: Colors.white70),),
                      items: <String>['1', '2', '3', '4','5'].map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  
                  Padding(padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('REGULAR 2D',style: TextStyle(color: Colors.white70),),
                      Text('Rp 30.000',style: TextStyle(color: Colors.white70),),
                    ],
                  ),
            ),

                  Container(
                    height: 70,
                    margin: EdgeInsets.only(bottom: 8),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        seat('15:05','12 seat available', Color(0xff251977)),
                        seat('15:05','12 seat available', Color(0xff38354B)),
                        seat('16:55','All seat token', Color(0xff282633)),
                      ],),),

                ],),),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height:55,
                child: TextButton(onPressed: (){}, child: Text('Take a seat',style: TextStyle(fontSize: 20),),
                style:TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xff251977),
                )),
              ),
            )





          ],),








      ),
    );
  }

  Container seat(String time,String seat, Color color) {
    return Container(margin: EdgeInsets.only(top: 16,right: 8),
                  width: 112,height: 50,
                  decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(time,style: TextStyle(fontSize: 16,color: Colors.white60,fontWeight: FontWeight.bold),),
                      Text(seat,style: TextStyle(fontSize: 12,color: Colors.white60),)
                    ],
                  ),
                );
  }

  Container scheduleDay(String date,String day, Color color) {
    return Container(margin: EdgeInsets.only(top: 16,right: 8),
                 width: 48,height: 48,
                 decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(8)),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(date,style: TextStyle(fontSize: 12,color: Colors.white70,fontWeight: FontWeight.bold),),
                     Text(day,style: TextStyle(fontSize: 15,color: Colors.white70,fontWeight: FontWeight.bold),)
                   ],
                 ),
               );
  }

  Container filmType(String type) {
    return Container(
                      height: 40,width: 100,  alignment: Alignment.center,margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Color(0xff38354B) ),
                      child: Text(type,style: TextStyle(color: Colors.white60,fontSize: 16,fontWeight: FontWeight.w500 ),),
                    );
  }
}
