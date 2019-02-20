import 'package:flutter/material.dart';

class Auth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              'Picture Dictionary',
              style: Theme.of(context).textTheme.display1.copyWith(
                fontSize: Theme.of(context).textTheme.display2.fontSize,
              ),
            ),

            RaisedButton(
              color: Theme.of(context).accentColor,
                textColor: Colors.white,
                child: Text('Start'),
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/home');
                }
            )

          ],
        )

      )
    );
  }
}