import 'package:flutter/material.dart';
import 'package:migra_app/resources/resources.dart';

class LogoMigration extends StatelessWidget {
  const LogoMigration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Images.migrationEmblem,
      width: double.infinity,
      height: 100,
    );
  }
}
