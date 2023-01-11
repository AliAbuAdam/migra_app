import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField(this.controller, {super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        maxLength: 10,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          prefixStyle: TextStyle(fontSize: 16),
          labelText: 'Номер телефона',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
