import 'package:flutter/material.dart';

import 'exemple_incrementation.dart';

class ExempleIncrementationPage extends StatelessWidget {
  const ExempleIncrementationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: ExempleIncrementation(),
    ));
  }
}
