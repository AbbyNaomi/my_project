import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Өнгөт Цамхаг',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ColorfulTowerScreen(),
    );
  }
}

class ColorfulTowerScreen extends StatelessWidget {
  const ColorfulTowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Өнгөт Цамхаг!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200, // Бүх дэлгэцийн цайвар саарал дэвсгэр
          child: Center(
            child: Column( // Энэ бол бидний өнгөт хайрцгуудыг нэг нэгнийхээ дээр овоолох "багана"
              mainAxisAlignment: MainAxisAlignment.center, // Цамхагийг дэлгэцийн голд байрлуулна
              children: <Widget>[
                // Нэгдүгээр давхар: Ягаан
                Container(
                  width: 120,
                  height: 50,
                  color: Colors.pink,
                  child: const Center(
                    child: Text('Дээд', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10), // Хайрцгуудын хоорондох зай
                // Хоёрдугаар давхар: Шар
                Container(
                  width: 140,
                  height: 50,
                  color: Colors.yellow,
                  child: const Center(
                    child: Text('Дунд', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10), // Хайрцгуудын хоорондох зай
                // Гуравдугаар давхар: Хөх
                Container(
                  width: 160,
                  height: 50,
                  color: Colors.indigo,
                  child: const Center(
                    child: Text('Доод', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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