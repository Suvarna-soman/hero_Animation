import 'package:animatedhero/detailpage.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero widget'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                builder:(context) => const DetailPage(),
                ));
          },

            child: Container(
              child:Center(
              child: Hero(
              tag: 'background',
              child:Image.asset('assets/images/login.jpg.jpeg',
                width:200,height: 50),
          ),
            ),
            ),
        ),
      ),
    );
  }
}
