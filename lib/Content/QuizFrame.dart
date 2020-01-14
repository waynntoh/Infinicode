import 'package:flutter/material.dart';

class QuizFrame extends StatefulWidget {
  final Map question;
  final Function sectionToggle;

  QuizFrame(this.question, this.sectionToggle);

  @override
  _QuizFrameState createState() => _QuizFrameState(question, sectionToggle);
}

class _QuizFrameState extends State<QuizFrame> {
  final Map question;
  bool answered = false;
  bool correct = false;
  bool answersDisabled = false;
  final Function sectionToggle;

  _QuizFrameState(this.question, this.sectionToggle);

  void answerQues() {
    setState(() {
      answered = true;
    });
  }

  void answerCorrect() {
    setState(() {
      sectionToggle();
      correct = true;
    });
  }

  void dismissStatBar() {
    setState(() {
      answered = false;
    });
  }

  void disableAnswers() {
    setState(() {
      answersDisabled = true;
    });
  }

  void enableAnswers() {
    setState(() {
      answersDisabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text('Quiz'),
        ),
        body: Stack(
          children: <Widget>[
            Opacity(
              opacity: .55,
              child: Image.asset(
                'assets/white_bg.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Column(
              children: <Widget>[
                Expanded(
                    child: AbsorbPointer(
                  absorbing: answersDisabled,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 12, right: 12),
                    margin: EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 24,
                        ),
                        Text(question['questionText'],
                            style: TextStyle(
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.start),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 64),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ...question['answers'].map((answer) {
                                  return Answer(
                                      answer['answerText'],
                                      answer['score'],
                                      answerQues,
                                      answerCorrect,
                                      disableAnswers);
                                }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
                Container(
                    child: (answered)
                        ? Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(left: 150, bottom: 48),
                            width: double.infinity,
                            child: (correct)
                                ? StatusBar(
                                    true, dismissStatBar, disableAnswers)
                                : StatusBar(
                                    false, dismissStatBar, enableAnswers))
                        : null)
              ],
            ),
          ],
        ));
  }
}

class Answer extends StatefulWidget {
  final String answer;
  final bool score;
  final Function answerQues;
  final Function answerCorrect;
  final Function disableAnswers;

  Answer(this.answer, this.score, this.answerQues, this.answerCorrect,
      this.disableAnswers);

  @override
  _AnswerState createState() =>
      _AnswerState(answer, score, answerQues, answerCorrect, disableAnswers);
}

class _AnswerState extends State<Answer> {
  final String answer;
  final bool score;
  final Function answerQues;
  final Function answerCorrect;
  final Function disableAnswers;
  Color currentColor;

  _AnswerState(this.answer, this.score, this.answerQues, this.answerCorrect,
      this.disableAnswers);

  void tapAnswer() {
    answerQues();
    if (score) {
      answerCorrect();
      disableAnswers();
      setState(() {
        currentColor = Colors.greenAccent[400];
      });
    } else {
      setState(() {
        currentColor = Colors.red[400];
      });
    }
  }

  void resetAnswer() {
    setState(() {
      currentColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          color: currentColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.black26)),
          child: ListTile(
              leading: Icon(
                Icons.label_important,
                color: Colors.black87,
              ),
              title: Text(answer, style: TextStyle(fontSize: 16)),
              onTap: () {
                tapAnswer();
                disableAnswers();
              }),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}

class StatusBar extends StatelessWidget {
  final bool status;
  final Function dismissStatBar;
  final Function enableAnswers;

  StatusBar(this.status, this.dismissStatBar, this.enableAnswers);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(45), bottomLeft: Radius.circular(45)),
        color: (status) ? Colors.greenAccent[400] : Colors.redAccent[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          (status)
              ? Text(
                  'CORRECT',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              : Text(
                  'WRONG',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
            color: Colors.white70,
            child: (status)
                ? Text(
                    'Continue',
                  )
                : Text('Retry'),
            onPressed: (status)
                ? () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }
                : () {
                    enableAnswers();
                    dismissStatBar();
                  },
          )
        ],
      ),
    );
  }
}
