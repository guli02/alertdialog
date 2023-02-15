import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}): super(key: key);
  
  @override
  _HomePageState createState() =>  _HomePageState();

}

class _HomePageState extends State<HomePage>{
void _showDialog(){
  showDialog (
    context: context, 
    builder:(context) {
      return AlertDialog(
        backgroundColor: Colors.green,
        title: Text('Title'),
        content: Text('Content, more info'),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: Text('Ok'),
            ),
          MaterialButton(
            onPressed: () {},
            child: Text('Canel'),
            ),
        ],
      );
    });
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'SHOW DIALOG', 
               style: TextStyle(fontSize: 30),
          ),
          ),
        ),
        ),
    );
  }
}