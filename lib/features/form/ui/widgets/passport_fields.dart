import 'package:flutter/material.dart';

class PassportFields extends StatelessWidget {
  const PassportFields({
    super.key,
    required this.seriesController,
    required this.numberController,
  });

  final TextEditingController seriesController;
  final TextEditingController numberController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: seriesController,
              maxLength: 4,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Паспорт серия',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: numberController,
              maxLength: 6,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Номер',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
