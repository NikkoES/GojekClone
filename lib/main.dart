import 'package:clone_gojek/pages/account.dart';
import 'package:clone_gojek/pages/chat.dart';
import 'package:clone_gojek/pages/home.dart';
import 'package:clone_gojek/pages/inbox.dart';
import 'package:clone_gojek/pages/order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Clone',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'MaisonNeue'
      ),
      home: MyHomePage(title: 'Gojek'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  final List<Widget> pages = [
    Home(), Order(), Chat(), Inbox(), Account()
  ];

  void _incrementTab(index) {
    setState(() {
      i = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 25,
          child: Image.asset('images/logo.png'),
        ),
        actions: <Widget>[
          Image.asset(
            'images/diskon.png',
            scale: 3,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1.0,
        centerTitle: false,
      ),
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: i,
          onTap: (index) {
            _incrementTab(index);
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home-non.png', scale: 2.5),
                ),
                title: Text('Home')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/orders.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/orders-non.png', scale: 2.5),
                ),
                title: Text('Orders')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/chat.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/chat-non.png', scale: 2.5),
                ),
                title: Text('Chat')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/inbox.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/inbox-non.png', scale: 2.5),
                ),
                title: Text('Inbox')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/account.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/account-non.png', scale: 2.5),
                ),
                title: Text('Account'))
          ]),
    );
  }
}