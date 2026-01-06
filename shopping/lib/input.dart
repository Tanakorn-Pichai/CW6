import 'package:flutter/material.dart';
import 'shopping.dart';

class Inputform extends StatefulWidget {
  const Inputform({super.key});

  @override
  State<Inputform> createState() => _InputformState();
}

class _InputformState extends State<Inputform> {
  String? _productName;
  String? _customerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Form')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              onChanged: (val) {
                setState(() {
                  _productName = val;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Product Name',
                icon: Icon(Icons.shopping_cart),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (val) {
                setState(() {
                  _customerName = val;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Customer Name',
                icon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormShopping(
                        productName: _productName ?? '',
                        customerName: _customerName ?? '',
                      ),
                    ),
                  );
                },
                child: const Text("SUBMIT"),
              ),
            ),
            const SizedBox(height: 20),
            Text("Product Name : $_productName"),
            Text("Customer Name : $_customerName"),
          ],
        ),
      ),
    );
  }
}
