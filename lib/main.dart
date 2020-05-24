



import 'package:flutter/material.dart';
import 'package:shareeverything/hal/Home.dart';
import 'package:shareeverything/hal/login.dart';
import 'hal/akun.dart';
import 'package:shareeverything/hal/akun.dart';
import 'package:shareeverything/hal/inbox.dart';
import 'package:shareeverything/hal/news.dart';
import 'package:shareeverything/hal/help.dart';
import'package:shareeverything/hal/form_mask.dart';
void main() => runApp(MyApp());

final routes= <String, WidgetBuilder>{
  HalLogin.tag:(context)=>HalLogin(),
  Beranda.tag: (context) => Beranda(),
  FormMask.tag: (context) =>FormMask(),

};
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share everything',
      theme: ThemeData(
        fontFamily: 'MaisonNeue',
        primarySwatch: Colors.green,
      ),

      home:_MyHomePage(),
      routes: routes,
    );
  }
}
class _MyHomePage extends StatefulWidget {

  _MyHomePage({Key key, this.title}):super(key:key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  int i=0;
  final List<Widget>pages= [Beranda(),News(),Help(),Inbox(),Akun()];

  void _incrementTab(index){
    setState(() {
      i=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: i,
        onTap: (index){
          _incrementTab(index);
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Image.asset('images/home.png',scale: 2.5,),
    ),
    icon: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Image.asset('images/home-non.png',scale: 2.5,),
    ),
              title:Text('Home')
          ),
    BottomNavigationBarItem(
    activeIcon: Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Image.asset('images/orders.png',scale: 2.5,),
    ),
    icon: Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Image.asset('images/orders-non.png',scale: 2.5,),
    ),
        title:Text('News')
    ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/chat.png',scale: 2.5,),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/chat-non.png',scale: 2.5,),
            ),
              title:Text('Help')
            ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/inbox.png',scale: 2.5,),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/inbox-non.png',scale: 2.5,),
            ),
              title:Text('Inbox')
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/account.png',scale: 2.5,),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset('images/account-non.png',scale: 2.5,),
            ),
              title:Text('Account')
          ),
          
        ],

      ),

    );
  }
}




