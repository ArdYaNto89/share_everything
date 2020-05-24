
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(FormMask());
class FormMask extends StatefulWidget {
  const FormMask({Key key}) : super(key: key);
  static String tag = 'formmask';
  @override
  _FormMaskState createState() => _FormMaskState();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    );
  }
}

class _FormMaskState extends State<FormMask> {

  File _image;
  String _valOngkir;
  List _listOngkirs = [
    'POS Indonesia',
    'TIKI',
    'JD.ID',
    'GOSEND',
  ];

  Future getImage(ImageSource media)async{
    var img= await ImagePicker.pickImage(source:media);
    setState(() {
      _image=img;
    });
  }
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
            title: Text('Upload Masker'),
            content: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 6,
              child: Column(
                children: <Widget>[

                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);



                    },
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.image),
                        Text('dari Gallery'),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.camera),
                        Text('dari Kamera'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final foto=  Padding(
      padding:
      const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: _image == null
          ? GestureDetector(
        onTap: () {
          myAlert();
        },
        child: Container(
          height: 100,
          width: 100,
          child: CircleAvatar(
            radius: 100,
          ),
        ),
      )
          : ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.file(
          _image,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
        ),
      ),
    );

    final nama_mask= TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nama Masker',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

      ),
    );

    final jenis_mask = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Jenis Masker',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),


      ),
    );
    final alamat = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Alamat tujuan',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

final dropdon=DropdownButton(
  hint: Text('Jenis Pengiriman'),
  value: _valOngkir,
  items: _listOngkirs.map((value)
  {
    return DropdownMenuItem(
      child:Text(value),
      value:value,
    );
  }).toList(),
  onChanged: (value){
    setState(() {
      _valOngkir = value;
    });
  },
);


    final sub_button = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {

          },
          color: Colors.lightBlueAccent,
          child: Text('Submit', style: TextStyle(color: Colors.white)),
        ),
      ),
    );





    return Scaffold(
      appBar: AppBar(
          title: Text('Form Masker')),
      backgroundColor: Colors.white,
      body: Center(

        child: ListView(

          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[

            foto,
            nama_mask,
            SizedBox(height: 8.0),
            jenis_mask,
            SizedBox(height: 8.0),
            alamat,
            SizedBox(height: 8.0),
            dropdon,
            SizedBox(height: 8.0),

            sub_button,

            // forgotLabel,
            //daftar
          ],
        ),
      ),
    );
  }
}
