import 'package:flutter/material.dart';

class formShopping extends StatelessWidget {
  const formShopping({super.key, 
  required this.productName,
  required this.customerName,
  });
  final String productName;
  final String customerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Screen'), 
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back!') ),
      ),
    );
  }
}