import 'package:flutter/material.dart';
import 'package:shopping/my_radio_button.dart';
import 'shopping.dart';

enum ProductTypeEnum { Downloadable, Deliverable, Onshop, Reserve }

class Inputform extends StatefulWidget {
  const Inputform({super.key});

  @override
  State<Inputform> createState() => _InputformState();
}

class _InputformState extends State<Inputform> {
  String? _productName;
  String? _customerName;

  final _productController = TextEditingController();
  final _customerController = TextEditingController();

  bool? _checkBox, listTileCheckBox = false;

  var _selectedChoice;

  ProductTypeEnum? _productTypeEnum;

  final List<String> _productSizelist = ["small", "medium", "large"];
  String? _selectedVal = "";

  _InputformState() {
    _selectedVal = _productSizelist[0];
  }
  final _fromkey = GlobalKey<FormState>();
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
            Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.blue,
              tristate: true,
              value: _checkBox,
              onChanged: (val) {
                setState(() {
                  _checkBox = val;
                });
              },
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              value: listTileCheckBox,
              title: const Text("Top Product"),
              onChanged: (value) {
                setState(() {
                  listTileCheckBox = value;
                });
              },
            ),

            const SizedBox(height: 20),
            Radio(value: null, groupValue: null, onChanged: null),
            RadioListTile(
              value: null,
              groupValue: null,
              onChanged: null,
              title: null,
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('1'),
              leading: Radio(
                value: 1,
                groupValue: _selectedChoice,
                onChanged: (value) {
                  setState(() {
                    _selectedChoice = 1;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('2'),
              leading: Radio(
                value: 2,
                groupValue: _selectedChoice,
                onChanged: (value) {
                  setState(() {
                    _selectedChoice = 2;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('3'),
              leading: Radio(
                value: 3,
                groupValue: _selectedChoice,
                onChanged: (value) {
                  setState(() {
                    _selectedChoice = 3;
                  });
                },
              ),
            ),
            const SizedBox(height: 30),
            RadioListTile<ProductTypeEnum>(
              title: Text(ProductTypeEnum.Deliverable.name),
              value: ProductTypeEnum.Deliverable,
              groupValue: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
            RadioListTile<ProductTypeEnum>(
              title: Text(ProductTypeEnum.Downloadable.name),
              value: ProductTypeEnum.Downloadable,
              groupValue: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
            RadioListTile<ProductTypeEnum>(
              title: Text(ProductTypeEnum.Onshop.name),
              value: ProductTypeEnum.Onshop,
              groupValue: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
            RadioListTile<ProductTypeEnum>(
              title: Text(ProductTypeEnum.Reserve.name),
              value: ProductTypeEnum.Reserve,
              groupValue: _productTypeEnum,
              onChanged: (val) {
                setState(() {
                  _productTypeEnum = val;
                });
              },
            ),
            const SizedBox(height: 30),
            DropdownButton<String>(
              value: _selectedVal,
              hint: const Text("Select size"),
              items: _productSizelist
                  .map(
                    (e) => DropdownMenuItem<String>(value: e, child: Text(e)),
                  )
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  _selectedVal = val;
                });
              },
            ),

            const SizedBox(height: 30),
            DropdownButtonFormField<String>(
              value: _selectedVal,
              items: _productSizelist
                  .map(
                    (e) => DropdownMenuItem<String>(value: e, child: Text(e)),
                  )
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  _selectedVal = val;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.blue,
              ),
              dropdownColor: Colors.white,
              decoration: const InputDecoration(
                labelText: "Product Size",
                hintText: "Select size",
                prefixIcon: Icon(Icons.straighten, color: Colors.blue),
                border: OutlineInputBorder(),
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
