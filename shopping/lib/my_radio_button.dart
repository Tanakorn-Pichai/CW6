import 'package:flutter/material.dart';
import 'input.dart';

enum ProductTypeEnum { Downloadable, Deliverable, Onshop, Reserve }

class MyRadioButton extends StatelessWidget {
  MyRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.selectedProductType,
    required this.onChanged,
  });
  String title;
  ProductTypeEnum value;
  ProductTypeEnum? selectedProductType;
  Function(ProductTypeEnum?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
        title: Text(title),
        value: value,
        groupValue: selectedProductType,
        onChanged: onChanged,
        dense: true,
        contentPadding: EdgeInsets.all(0.0),
      ),
    );
  }
}
