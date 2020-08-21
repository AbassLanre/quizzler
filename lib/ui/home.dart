import 'package:flutter/material.dart';
import 'package:quizzler/models/quiz_questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  QuizBrain _quizBrain= QuizBrain();
  int counter = 0;
  List<Icon> showIcon =[];


  void userAns(bool checkedAns){
    setState(() {
      bool correct = _quizBrain.getCorrectAns(counter);
      if (correct == checkedAns) {
        print("correct");
        showIcon.add(Icon(Icons.check, color: Colors.green));
      } else {
        print("wrong");
        showIcon.add(Icon(Icons.close, color: Colors.red));
      }
      if (counter != 12) {
        counter++;
      }
      if(counter==12){
        Alert(
          context: context,
          type: AlertType.success,
          title: "FINISHED",
          desc: "Questions have been Exhausted, press Cancel",
          buttons: [
            DialogButton(
              child: Text("Cancel",
              style: TextStyle(color:Colors.white, fontSize: 20.0),),
              onPressed: (){
                Navigator.pop(context);
              },
              width: 120,

            )
          ]
        ).show();
        counter=0;
        showIcon.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Center(
                child: Text( _quizBrain.getText(counter)
                  ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  onPressed: () {
                    userAns(true);
                  },
                  color: Colors.green,
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  onPressed: () {
                    userAns(false);
                  },
                  color: Colors.red,
                  child: Text(
                    "False",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Row(
              children: showIcon,
            )
          ],
        ),
      ),
    );
  }
}
