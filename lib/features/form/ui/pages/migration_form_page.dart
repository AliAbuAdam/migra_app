import 'package:flutter/material.dart';

import '../widgets/adress_field.dart';
import '../widgets/age_field.dart';
import '../widgets/email_field.dart';
import '../widgets/logo_migration.dart';
import '../widgets/name_field.dart';
import '../widgets/passport_fields.dart';
import '../widgets/phone_field.dart';
import '../widgets/surname_field.dart';

class MigrationFormPage extends StatefulWidget {
  const MigrationFormPage({super.key});

  @override
  State<MigrationFormPage> createState() => _MigrationFormPageState();
}

class _MigrationFormPageState extends State<MigrationFormPage> {
  final controllerNameField = TextEditingController();
  final controllerSurNameField = TextEditingController();
  final controllerPassNumber = TextEditingController();
  final controllerPassSerias = TextEditingController();
  final controllerAge = TextEditingController();
  final controllerPhone = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerAdress = TextEditingController();

  // String statusText = '';
  // Color statusColor = Colors.black;

  StatusModel statusModel = StatusModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LogoMigration(),
              Text(
                statusModel.text ?? '',
                style: TextStyle(
                  color: statusModel.color,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              NameField(controllerNameField),
              SurNameField(controllerSurNameField),
              PassportFields(
                seriesController: controllerPassSerias,
                numberController: controllerPassNumber,
              ),
              AgeField(controllerAge),
              PhoneField(controllerPhone),
              EmailField(controllerEmail),
              AdressField(controllerAdress),
              const SizedBox(height: 20),
              // const SentButton(),
              ElevatedButton(
                onPressed: () {
                  if (controllerNameField.text.isNotEmpty &&
                      controllerSurNameField.text.isNotEmpty &&
                      controllerPassNumber.text.isNotEmpty &&
                      controllerPassSerias.text.isNotEmpty &&
                      controllerAge.text.isNotEmpty &&
                      controllerPhone.text.isNotEmpty &&
                      controllerEmail.text.isNotEmpty &&
                      controllerAdress.text.isNotEmpty) {
                    setState(() {
                      statusModel.text = 'Анкета успешно отправлена';
                      statusModel.color = Colors.green;
                    });
                  } else {
                    setState(() {
                      statusModel.text = 'Заполните все поля';
                      statusModel.color = Colors.red;
                    });
                  }
                },
                child: const Text('Отправить данные'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusModel {
  String? text;
  Color? color;

  StatusModel({this.text, this.color});
}
