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
        appBar: _getAppBar(),
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      title: Text('Alireza'),
      elevation: 2,
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getAvatar(),
        ],
      ),
    );
  }

  Widget _getAvatar() {
    return Column(
      children: [
        SizedBox(height: 30.0),
        CircleAvatar(
          backgroundImage: AssetImage('images/myavatar.jpg'),
          radius: 100,
        ),
        SizedBox(height: 15.0),
        Text('علیرضا کریمی نژاد هستم. در حال حاضر در حالِ یادگیری فلاتر هستم'),
        Text('هم اکنون طراح سایت هستم')
      ],
    );
  }
}
