import 'package:flutter/material.dart';
import 'question.dart';
import 'mybutton.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'Câu 1: Flutter dùng ngôn ngữ gì để lập trình ?',
    'Câu 2: Phân biệt giữa StatelessWidget và StatefulWidget ?',
    'Câu 3: Hàm build cùng để làm gì ?',
    'Câu 4: Thư viên của Flutter được viết bằng Java đúng không ?',
    'Câu 5: Flutter có chạy được trên Blackberry không ?',
  ];

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: const Text('Scaffold title'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            MyButton('Quay về câu hỏi đầu tiên', () {
              setState(() {
                questionIndex = 0;
              });
            }),
            MyButton('Quay lại câu hỏi trước', () {
              setState(() {
                if (questionIndex > 0) questionIndex--;
              });
            }),
            Question(questions[questionIndex], 30),
            MyButton('Đi đến câu hỏi kế tiếp', () {
              setState(() {
                if (questionIndex < 4) questionIndex++;
              });
            }),
            MyButton('Đi đến câu hỏi cuối cùng', () {
              setState(() {
                questionIndex = 4;
              });
            }),
            Question('Đây là nội dung hỏi đáp', 15),
            Question('Kết thúc nội dung !!!', 20),
          ],
        ),
      ),
    );
  }
}
