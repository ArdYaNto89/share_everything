import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shareeverything/hal/Home.dart';



class HalLogin extends StatefulWidget {
  static String tag= 'hal-login';
  @override
  _HalLoginState createState() => _HalLoginState();
}

class _HalLoginState extends State<HalLogin> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero (
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor :Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/donasi1.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'me@gmail.com',
      decoration:InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0)
      ),
    );
    final Password = TextFormField(
      autofocus: false,
      initialValue: '123456',
      obscureText: true,
      decoration:InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final LoginButton=Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            Navigator.of(context).pushNamed( Beranda.tag);

          },
          color: Colors.lightBlueAccent,
          child: Text('Log In',style: TextStyle(color: Colors.white)),
        ),
      ),
    );
final forgotLabel= FlatButton(
  child: Text(
    'Lupa Password',
    style: TextStyle(color:Colors.black54),
  ),
  onPressed: (){},
);
    final daftar= FlatButton(
      child: Text(
        'belum punya akun ?',
        style: TextStyle(color:Colors.black54),
      ),
      onPressed: (){},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
           email,
           SizedBox(height: 8.0),
            Password ,
            SizedBox(height: 24.0),
            LoginButton,
            forgotLabel,
            daftar
          ],
        ),
      ),
    );
  }
}
