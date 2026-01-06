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

  void _updateText(String val) {
    setState(() {
      _customerName = val;
      _productName = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Form')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              onChanged: _updateText,
              decoration: const InputDecoration(
                hintText: 'Product Name',
                icon: Icon(Icons.verified_user_outlined),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: _updateText,
              decoration: const InputDecoration(
                labelText: 'Customer Name',
                icon: Icon(Icons.verified_user_outlined),
              ),
            ),
            const SizedBox(height: 20),
            btn(context),
            const SizedBox(height: 20),
            Text("productName : $_productName"),
            Text("customerName : $_customerName"),
          ],
        ),
      ),
    );
  }
}

Widget btn(BuildContext context) {
  return Center(
    child: ElevatedButton(
      onPressed: () {
        var _productName;
        var _customerName;
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
  );
}
