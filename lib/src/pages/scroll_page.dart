import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: PageView(
         scrollDirection: Axis.vertical,
         children: <Widget>[
           _page1(),
           _page2(),
         ],
       ),
     ),
     
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _imgBg(),
        _text(),
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imgBg() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }
  Widget _text() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 56.0, fontWeight: FontWeight.w500);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: textStyle,),
          Text('Martes', style: textStyle,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 80.0, color: Colors.white,)
        ],
      ),
    );
  }

  Widget _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0 ),
            child:Text('Bienvenidos', style: TextStyle(fontSize: 20),),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
  
}