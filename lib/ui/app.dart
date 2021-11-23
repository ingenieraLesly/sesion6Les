import 'package:demo_app/ui/pages/converter.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MisiónTIC 2022',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MisiónTIC 2022 - Móvil - Provider'),
        ),
        body: Center(
          child: Converter(),
        ),
      ),
    );
  }
}
