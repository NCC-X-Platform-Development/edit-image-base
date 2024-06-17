import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return const Scaffold(
      body: Center(
        child: Text('Start Screen'),
      ),
    );
  }
}
