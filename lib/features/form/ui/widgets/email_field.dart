import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.none,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          labelText: 'Электронная почта',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
