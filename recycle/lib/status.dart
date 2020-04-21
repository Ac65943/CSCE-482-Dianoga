import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget{
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage>{
  int trash;
  int plastic;
  int glass;
  int metal;
  int paper;
  int cardboard;
  
  trashIncrement(){
    setState(() {
      trash++;
    });
  }

  plasticIncrement(){
    setState(() {
      plastic++;
    });
  }

  glassIncrement(){
    setState(() {
      glass++;
    });
  }

  metalIncrement(){
    setState(() {
      metal++;
    });
  }

  paperIncrement(){
    setState(() {
      paper++;
    });
  }

  cardboardIncrement(){
    setState(() {
      cardboard++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Card(
      
    );
  }
}