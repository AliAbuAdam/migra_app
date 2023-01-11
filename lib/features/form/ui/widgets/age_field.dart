import 'package:flutter/material.dart';

class AgeField extends StatelessWidget {
  const AgeField(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        maxLength: 3,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          labelText: 'Возраст',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
