import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Миний Дуртай Зураг',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyFavoritePictureScreen(),
    );
  }
}

class MyFavoritePictureScreen extends StatelessWidget {
  const MyFavoritePictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Миний Дуртай Зураг!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.purple.shade100, // Бүх дэлгэцийн цайвар ягаан дэвсгэр
          child: Center(
            child: Column( // Зургийг төвд байрлуулахын тулд Column ашиглана
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Энд бид зургаа байрлуулна
                Container( // Зургийг хүрээлэх жижиг "жааз"
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white, // Жаазны өнгө
                    borderRadius: BorderRadius.circular(15), // Булангуудыг бөөрөнхийлнө
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Image.network('https://img.freepik.com/free-vector/cute-bear-eating-pizza-cartoon-vector-icon-illustration-animal-food-icon-concept-isolated-premium_138676-5434.jpg?semt=ais_hybrid&w=740'),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Өхөөрдөм Баавгай!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}