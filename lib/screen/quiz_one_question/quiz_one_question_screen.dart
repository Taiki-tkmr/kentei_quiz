import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kentei_quiz/controller/quiz_one_question/quiz_one_question_screen_controller.dart';
import 'package:kentei_quiz/resource/color_resource.dart';
import 'package:kentei_quiz/resource/extension_resource.dart';
import 'package:kentei_quiz/resource/initial_resource.dart';
import 'package:kentei_quiz/resource/quiz_resource.dart';
import 'package:kentei_quiz/screen/screen_argument.dart';

part 'quiz_one_question_appbar.dart';
part 'quiz_one_question_body.dart';

class QuizOneQuestionScreen extends StatelessWidget {
  const QuizOneQuestionScreen(this.arguments);
  final QuizOneQuestionScreenArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(arguments),
      body: _Body(arguments),
    );
  }
}
