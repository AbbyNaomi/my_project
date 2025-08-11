import 'package:flutter/material.dart';

import 'exercise2.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Гурван найз',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const MyFavoritePictureScreen(),

    );
  }
}

class ThreeFriendsScreen extends StatelessWidget {
  const ThreeFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Гурван найз',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.yellow.shade100,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                  child: const Center(
                    child: Text('Улаан', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
