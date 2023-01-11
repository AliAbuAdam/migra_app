import 'package:flutter/material.dart';

class SurNameField extends StatelessWidget {
  const SurNameField(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.characters,
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          labelText: 'Фамилия',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
