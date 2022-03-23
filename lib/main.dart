import 'package:flutter/material.dart';

import 'Signup.dart';
import 'Login.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Gaana(),
  ));
}

class Gaana extends StatelessWidget {
  
  

@override
  Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
body: Container(
  constraints: BoxConstraints.expand(),
decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.jpg"),
                        fit: BoxFit.cover)),
child: Column(

children: <Widget>[
   //Image.asset('assets/background.jpg'),
Container(
 
  child: Text(
'gaana',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.red,
fontSize: 80,
fontWeight: FontWeight.bold,
fontFamily: 'Martel-Black'),
)
),
Container(
  margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Login Page', style: TextStyle(fontSize: 20.0),),  
                color: Color.fromARGB(255, 22, 27, 34),  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
                },
)



),
Container(
  margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Sign up', style: TextStyle(fontSize: 20.0),),  
                color: Color.fromARGB(255, 17, 18, 20),  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Signup()),
            );
                },
)



)])),

),

);


}
          
      
    
  }


