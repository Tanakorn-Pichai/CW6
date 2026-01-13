import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    bool isEven = number % 2 == 0;

    return Scaffold(
      appBar: AppBar(title: Text('Display Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ตัวเลขที่คุณกรอก: $number', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text(
              isEven ? 'เป็นเลขคู่' : 'เป็นเลขคี่',
              style: TextStyle(
                fontSize: 24,
                color: isEven ? Colors.blue : Colors.red,
              ),
            ),
            const SizedBox(height: 40),
            Image.asset(
              isEven ? 'images/pic2.jpg' : 'images/pic1.jpg',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('กลับไปหน้า Form'),
            ),
          ],
        ),
      ),
    );
  }
}
