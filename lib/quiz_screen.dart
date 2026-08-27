import 'package:flutter/material.dart';
import 'package:udemy_quizapp2/questions_screen.dart';
import 'package:udemy_quizapp2/start_screen.dart';

class Quiz extends StatefulWidget{
 const Quiz({super.key});
 @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  
  Widget ? activeScreen;
  @override
  void initState(){
    activeScreen =  StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
@override
 Widget build(context){
   return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 57, 6, 114),
              Color.fromARGB(255, 62, 9, 97),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
          ),
        child: activeScreen,
        ),
      ),
    );
 }
 
}