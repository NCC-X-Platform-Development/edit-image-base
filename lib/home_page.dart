import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: ListView(
        children: const [
          // TODO: ここに body の中身を追加していきます🎅
        ],
      ),
    );
  }
}
