import 'package:flutter/material.dart';

import 'features/form/ui/pages/migration_form_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MigrationFormPage(),
    );
  }
}
