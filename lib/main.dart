import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      title: Text('Alireza Kariminejad'),
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
        Text(
          'علیرضا کریمی نژاد هستم. در حال حاضر در حالِ یادگیری فلاتر هستم',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'هم اکنون طراح سایت هستم',
          style: TextStyle(
            fontSize: 16.0,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15.0),
        _getRowIcons(),
        SizedBox(height: 15.0),
        _getSkillsCard(),
        SizedBox(height: 15.0),
        _getResume()
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.center,
      runSpacing: 20.0,
      spacing: 10.0,
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareInstagram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareGithub),
          color: Colors.blueGrey,
        ),
      ],
    );
  }

  Widget _getSkillsCard() {
    var skillTitles = ['html', 'css', 'js', 'figma', 'xd', 'ps'];
    return Wrap(
      runSpacing: 30.0,
      spacing: 30.0,
      children: [
        for (var skill in skillTitles)
          Card(
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    width: 80.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: double.infinity),
              Text('طراحی سایت وزارت بهداشت', textDirection: TextDirection.rtl),
              Text('طراحی سایت علوم پزشکی ایران', textDirection: TextDirection.rtl),
              Text('طراحی سایت علوم پزشکی تهران', textDirection: TextDirection.rtl),
              Text('طراحی سایت علوم پزشکی کاشان', textDirection: TextDirection.rtl),
              Text('طراحی سایت بیمه نوین', textDirection: TextDirection.rtl),
              Text('...', textDirection: TextDirection.rtl),
            ],
          )
        ],
      ),
    );
  }
}
