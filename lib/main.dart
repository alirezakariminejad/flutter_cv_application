import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Vazir'),
      home: Scaffold(
        appBar: getAppBar(),
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: getMainBody(),
        ),
      ),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    backgroundColor: Colors.red,
    title: Text('Alireza'),
    elevation: 2,
  );
}

Widget getMainBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
        Text('alireza'),
      ],
    ),
  );
}
