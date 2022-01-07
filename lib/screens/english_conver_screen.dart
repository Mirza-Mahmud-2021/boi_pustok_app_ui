import 'package:flutter/material.dart';

class EnglishConverScreen extends StatefulWidget {
  const EnglishConverScreen({ Key? key }) : super(key: key);

  @override
  _EnglishConverScreenState createState() => _EnglishConverScreenState();
}

class _EnglishConverScreenState extends State<EnglishConverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text("English Conver"),
      ),
      
    );
  }
}