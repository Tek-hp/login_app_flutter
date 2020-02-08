  import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:  LoginPage(),
      theme :  ThemeData(
        primaryColor: Colors.black
      )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.red,
      body: ListView(
        children : <Widget>[
          Image(
            image: AssetImage("assets/welc.jpg"),
            fit:BoxFit.scaleDown,
            ),
          Center(
            child: Text(
              'Login Page',
              style:TextStyle(
                fontSize: 40.0,
              decorationStyle: TextDecorationStyle.wavy,
              color: Colors.green,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  'Username :'
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(30.0)  ,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                      hintText: 'Enter Username',
                      
                      ),
              ),
              ),
              ),
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child:Text(
                  'Password :'
                ),
              ),
              Expanded(
                flex: 2,
                child: TextField(
                  
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                      hintText: 'Enter Password',
                      
                      ),
              ),
              )],
          ),
          //AwesomeButton(),
        ]
      ),
    );
  }
}

//button

class AwesomeButton extends StatefulWidget{
  @override
  AwesomeButtonState createState() => AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
  void onPressed(){
    setState(() {
      Navigator.push(
        context,
         new MaterialPageRoute(builder: (context) => new SecondScreen()));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Stateful Widget"), backgroundColor:Colors.blue),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(15.0)),
              RaisedButton(
                child: Text('SUBMIT'),
                onPressed: onPressed,
                )
            ],
          )
        )
      ),
    );
  }
}

//second Screen

class SecondScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('CONGRATULATIONS'),
      ),
      body: Text('You Are Logged in.'),
    );
  }
}