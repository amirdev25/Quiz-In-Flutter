import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var questions = [
    {
      'questionText': '2 * 6 = ?',
      'answers': ['12', '16', '7', '8']
    },
    {
      'questionText': '2 + 2 = ?',
      'answers': ['4', '2', '6', '22']
    },
    {
      'questionText': '8 * 7 = ?',
      'answers': ['13', '56', '79', '87']
    },
    {
      'questionText': '6 - 2 = ?',
      'answers': ['62', '12', '4', '13']
    },
    {
      'questionText': '7 * 5 = ?',
      'answers': ['12', '35', '45', '75']
    },
    {
      'questionText': '3 + 4 = ?',
      'answers': ['12', '7', '6', '8']
    },
    {
      'questionText': '15 / 3 = ?',
      'answers': ['12', '5', '7', '18']
    },
    {
      'questionText': '13 * 3 = ?',
      'answers': ['16', '39', '5', '10']
    },
    {
      'questionText': '5 * 9 = ?',
      'answers': ['42', '14', '15', '45']
    },
    {
      'questionText': '48 / 6 = ?',
      'answers': ['7', '8', '42', '24']
    },
  ];
  int _indexQuestion = 0;

  _answerQuestions() {
    setState(() {
      if (_indexQuestion < questions.length - 1) {
        _indexQuestion++;
      } else {
        _indexQuestion = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matematika scrollbar"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Text(
                  questions[_indexQuestion]['questionText'] as String,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
              ),
              // AnswerBtn(
              //     (questions[_indexQuestion]['answers'] as List<String>)[0],
              //     _answerQuestions),
              // AnswerBtn(
              //     (questions[_indexQuestion]['answers'] as List<String>)[1],
              //     _answerQuestions),
              // AnswerBtn(
              //     (questions[_indexQuestion]['answers'] as List<String>)[2],
              //     _answerQuestions),
              // AnswerBtn(
              //     (questions[_indexQuestion]['answers'] as List<String>)[3],
              //     _answerQuestions),
              ...(questions[_indexQuestion]['answers'] as List<String>)
                  .map((answer) {
                return AnswerBtn(answer, _answerQuestions);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
