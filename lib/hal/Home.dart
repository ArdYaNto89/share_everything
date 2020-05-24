import 'package:flutter/material.dart';
import 'package:shareeverything/hal/form_mask.dart';


class Beranda extends StatefulWidget {
  static String tag='beranda-page';
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: Container(
       height: 70,
       child: Image.asset('images/donasi1.png'),
     ),
     actions: <Widget>[
       
     ],
     backgroundColor: Colors.white,
     elevation: 1.0,
     centerTitle: false,
        
    ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: <Widget>[
                InkWell(
                  onTap: (){Navigator.of(context).pushNamed(FormMask.tag);},
                  child:HeaderItem(
                    images:'images/masker.jpg',
                    title:'ShareeMask',
                    textcolor:Colors.grey[600],
                  ),
                ),

                HeaderItem(

                  images:'images/food.png',
                  title:'ShareFood',
                  textcolor: Colors.grey[600],
                ),


             HeaderItem(
                    images:'images/glooves.png',
                    title:'ShareGlooves',
                    textcolor: Colors.grey[600],
                  ),

              ],
            ),

            SizedBox(
              height: 20,
            ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            InkWell(
            onTap: (){Navigator.of(context).pushNamed(FormMask.tag);},
        child:HeaderItem(
          images:'images/money.png',
          title:'ShareMoney',
          textcolor:Colors.grey[600],
        ),
      ),
  ],
        ),
        SizedBox(
  height: 30,
      ),
    Container(
    height: 170,
      decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/donasilogo.png'),
    fit: BoxFit.cover),
    color: Colors.blue[800],
    borderRadius: BorderRadius.circular(10)
    ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: Text('Ayo donasi !'),
    ),
    Text('Berbagi sesama itu indah'),
    SizedBox(
    height: 10,
    ),
    Row(
    children: <Widget>[
      Spacer(),
    ],
    ),
    ],
    ),
    ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key key,this.images,this.title,this.textcolor})
  :super (key: key);
  final String images;
  final String title;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: <Widget>[
          Image.asset(
            images,
            scale: 3,

          ),
          SizedBox(
            height: 10,

          ),
          Text(
            title,
            style:TextStyle(color:textcolor??Colors.white ,
          ),
          )
        ],

      ),
    );
  }
}




