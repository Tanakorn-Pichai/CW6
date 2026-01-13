import 'package:flutter/material.dart';
import 'display.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _numberController = TextEditingController();
  String? errorText;

  void checkNumber() {
    if (_numberController.text.isEmpty) {
      setState(() {
        errorText = 'กรุณากรอกตัวเลข';
      });
      return;
    }
    final int? number = int.tryParse(_numberController.text);
    if (number == null) {
      setState(() {
        errorText = 'กรุณากรอกตัวเลขที่ถูกต้อง';
      });
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DisplayPage(number: number)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'กรอกตัวเลข',
                errorText: errorText,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: checkNumber, child: Text('Check Number')),
          ],
        ),
      ),
    );
  }
}
