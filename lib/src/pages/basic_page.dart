import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle( fontSize: 20.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _bImage(),
          _bTitle(),
          _actions(),
          _bText(),
          _bText(),
          _bText(),
          _bText(), 
          _bText(),  
        ],
        ),
      ),
      
    );
  }

  Widget _bImage() {
    return Container(
      width: double.infinity,
      child: Image( 
        image: NetworkImage('https://i.pinimg.com/originals/e4/ee/2a/e4ee2a233948c6a34789c33d831f67fe.jpg'),
        height: 350.0,
        fit: BoxFit.cover,
      )
      );
  }

  Widget _bTitle() {
    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Arandas Jalisco', style: titleStyle,),
                        SizedBox(height: 6.0,),
                        Text('Segunda Cuidad Tequilera ', style: subtitleStyle,)
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0),
                  Text('41',style: titleStyle,),
                ],
              ),
            ),
    );
  }

  Widget _actions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'Call'),
        _action(Icons.near_me, 'Route'),
        _action(Icons.share, 'Share'),
        
      ],
    );
  }

  Widget _action(IconData icon, String text){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );

  }

  Widget _bText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, ),
        child: Text(
          'Dolore anim eiusmod anim duis nisi aute tempor et do sit aliqua occaecat et. Enim voluptate et qui deserunt amet sunt dolore laboris do aliqua. Culpa officia incididunt duis eiusmod anim. Deserunt aute adipisicing voluptate ex. Elit mollit Lorem voluptate nostrud aliqua ad occaecat in adipisicing eiusmod irure labore. Qui duis ea culpa voluptate anim. Deserunt pariatur tempor qui magna laboris ad voluptate magna do eiusmod.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}