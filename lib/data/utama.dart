import 'package:flutter/widgets.dart';
var utama= [
  Model(
      images: 'images/masker.jpg',
      title: 'ShareMask',
      textcolor: Color(0xFF52616b),
      route:null
  ),
  Model(
      images: 'images/food.png',
      title: 'ShareFood',
      textcolor: Color(0xFF52616b),
      route:null
  ),  Model(
      images: 'images/glooves.png',
      title: 'ShareGlooves',
      textcolor: Color(0xFF52616b),
      route:null
  ),  Model(
      images: 'images/money.png',
      title: 'ShareMoney',
      textcolor: Color(0xFF52616b),
      route:null
  ),

];
class Model{
  var images;
  var title;
  Color textcolor;
  var route;
  Model({this.images,this.title,this.textcolor,this.route});
}