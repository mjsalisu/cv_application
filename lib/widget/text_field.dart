import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controllerName,
    required this.label,
  });

  final TextEditingController controllerName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerName,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
