import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.characters,
        decoration: const InputDecoration(
          labelText: 'Имя',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
