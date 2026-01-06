import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BODY WEEK6', style: TextStyle(fontSize: 24)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('BODY WEEK6', style: TextStyle(fontSize: 40)),
              const SizedBox(height: 20),

              OutlinedButton(
                onPressed: () {},
                child: const Text("Go To Shopping"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
