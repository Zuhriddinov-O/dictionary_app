import 'package:flutter/material.dart';

import 'presentation/page/home_page.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), theme: ThemeData(useMaterial3: true));
  }
}
