import 'dart:math';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _bgapp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _btnsCurve(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buttonNavigationBar(context)
    );
  }

  Widget _btnsCurve() {
    return Table(
      children: [
        TableRow(
          children: [
            _buildBtnCurve('https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1024px-Borussia_Dortmund_logo.svg.png', 'Burussia D', '3','2'),
            _buildBtnCurve('https://www.stickpng.com/assets/images/584a9b47b080d7616d298778.png', 'Real Madrid', '3','0'),
          ]
        ),
        TableRow(
          children: [
            _buildBtnCurve('http://pngimg.com/uploads/fcb_logo/fcb_logo_PNG23.png', 'Barcelona', '2','3'),
            _buildBtnCurve('https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1024px-Borussia_Dortmund_logo.svg.png', 'Burussia D', '3','2'),
          ]
        ),
        TableRow(
          children: [
            _buildBtnCurve('https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1024px-Borussia_Dortmund_logo.svg.png', 'Burussia D', '3','2'),
            _buildBtnCurve('https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1024px-Borussia_Dortmund_logo.svg.png', 'Burussia D', '3','2'),
          ]
        ),
        TableRow(
          children: [
           _buildBtnCurve('https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1024px-Borussia_Dortmund_logo.svg.png', 'Burussia D', '3','2'),
            _buildBtnCurve('https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1024px-Borussia_Dortmund_logo.svg.png', 'Burussia D', '3','2'),
          ]
        ),
      ],
    );
  }

  Widget _buildBtnCurve(String urlImg, String teamName, String psgResul, String rivalResult) {

    final txtStyle = TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500);
    
    return BackdropFilter(
      filter: prefix0.ImageFilter.blur( sigmaX: 0.0, sigmaY: 0.0),
      child:Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.70),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(width: 15,),
              CircleAvatar(
              radius: 35.0,
              child: Image(image: NetworkImage('https://clipart.info/images/ccovers/1518802542PSG-Png-Paris-Saint-Germain-Logo.png'),
              fit: BoxFit.cover,),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              radius: 35.0,
              child: Image(image: NetworkImage(urlImg),),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SizedBox(width: 28,),
              Text('PSG', style: txtStyle),
              SizedBox(width: 30,),
              Text(teamName, style: txtStyle,)
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 45),
              Text(psgResul, style: txtStyle),
              SizedBox(width: 70,),
              Text(rivalResult, style: txtStyle,)
            ],
          ),
        ],
      ),
     ),
    );
    
    
  }

  Widget _buttonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.blue,
        primaryColor: Colors.white,
        textTheme: Theme.of(context).textTheme
        .copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))

      ),
      child: BottomNavigationBar(
        
       items: <BottomNavigationBarItem> [
         BottomNavigationBarItem(
           icon: Icon(Icons.calendar_today, size: 30.0, ),
           title: Container(),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.bubble_chart, size: 30.0, color: Colors.red,),
           title: Container(),
         ),
          BottomNavigationBarItem(
           icon: Icon(Icons.supervised_user_circle, size: 30.0, color: Colors.red,),
           title: Container(),
         ),
       ],
      ),
    ); 
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Paris and Germain ', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
            SizedBox(height: 10.0),
            Text('Todos los partidos del PSG en la liga Envato MX', style: TextStyle(color: Colors.white, fontSize: 18.0,), textAlign: TextAlign.center ,)
          ],
        ),
      ),
    );
  }

  Widget _bgapp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Colors.blue
          ]
        )
      ),
    );

    final redBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
      height: 360.0,
      width: 360.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(110.0),
        gradient: LinearGradient(
          colors: [
          
            Colors.red,
            Color.fromRGBO(226, 68, 128, 1.0),
          ]
        )
      ),
     ),
    );
    
    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child: redBox,
          top: -100.0,
          )
      ],
    );
  }
}