import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kentei_quiz/controller/quiz_remember/quiz_remember_screen_state.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../entity/quiz_item/quiz_item.dart';
import '../../screen/screen_argument.dart';

final quizRememberScreenControllerProvider = StateNotifierProvider<
    QuizRememberScreenController, QuizRememberScreenState>(
  (ref) => QuizRememberScreenController(ref: ref),
);

class QuizRememberScreenController
    extends StateNotifier<QuizRememberScreenState> with LocatorMixin {
  QuizRememberScreenController({required this.ref})
      : super(const QuizRememberScreenState());

  final Ref ref;

  final db = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ///確認ボタンを押した時
  void tapConfirmButton() {
    switchAnsView();
  }

  ///知ってるボタンを押したとき
  void tapKnownButton(QuizRememberScreenArguments arguments) {
    addKnownQuestion(arguments);
    nextQuiz(arguments);
    switchAnsView();
    switchKnowState(arguments);
  }

  ///知らないボタンを押した時
  void tapUnKnownButton(QuizRememberScreenArguments arguments) {
    addUnKnownQuestion(arguments);
    nextQuiz(arguments);
    switchAnsView();
    switchUnKnowState(arguments);
  }

  ///クリアボタン
  void tapClearButton() {
    state = state.copyWith(
      quizIndex: 0,
      lapIndex: 0,
      isAnsView: false,
      knowRememberQuestions: [],
      unKnowRememberQuestions: [],
    );
  }

  void switchAnsView() {
    state = state.copyWith(isAnsView: !state.isAnsView);
  }

  ///次の問題に進む
  void nextQuiz(QuizRememberScreenArguments arguments) {
    final quizIndex = state.quizIndex;
    final lapIndex = state.lapIndex;
    if (quizIndex == arguments.item.rememberQuestions.length - 1) {
      state = state.copyWith(quizIndex: 0, lapIndex: lapIndex + 1);
    } else if (state.knowRememberQuestions.length ==
        arguments.item.rememberQuestions.length) {
      print("全部解き終わったよ！");
    } else {
      state = state.copyWith(quizIndex: quizIndex + 1);
    }
  }

  ///知らないボタンを押した時の苦手リストに追加
  void switchUnKnowState(QuizRememberScreenArguments arguments) {
    final rememberQuestions = [...arguments.item.rememberQuestions];
    if (!rememberQuestions[state.quizIndex].isWeak) {
      rememberQuestions[state.quizIndex] = RememberQuiz(
        questionId: rememberQuestions[state.quizIndex].questionId,
        question: rememberQuestions[state.quizIndex].question,
        ans: rememberQuestions[state.quizIndex].ans,
        isWeak: true,
      );
    } else {
      return;
    }
  }

  ///知らないボタンを押した時の苦手リストから解除
  void switchKnowState(QuizRememberScreenArguments arguments) {
    final rememberQuestions = [...arguments.item.rememberQuestions];
    if (!rememberQuestions[state.quizIndex].isWeak) {
      rememberQuestions[state.quizIndex] = RememberQuiz(
        questionId: rememberQuestions[state.quizIndex].questionId,
        question: rememberQuestions[state.quizIndex].question,
        ans: rememberQuestions[state.quizIndex].ans,
        isWeak: false,
      );
    } else {
      return;
    }
  }

  void addKnownQuestion(QuizRememberScreenArguments arguments) {
    final knowRememberQuestions = [...state.knowRememberQuestions];
    final unKnowRememberQuestions = [...state.unKnowRememberQuestions];

    //すでに知ってるリストに含まれているとき
    if (knowRememberQuestions
        .contains(arguments.item.rememberQuestions[state.quizIndex])) {
    }
    //、知らないリストに含まれている場合
    else if (unKnowRememberQuestions
        .contains(arguments.item.rememberQuestions[state.quizIndex])) {
      knowRememberQuestions
          .add(arguments.item.rememberQuestions[state.quizIndex]);
      unKnowRememberQuestions
          .remove(arguments.item.rememberQuestions[state.quizIndex]);
    }
    //それ以外
    else {
      knowRememberQuestions
          .add(arguments.item.rememberQuestions[state.quizIndex]);
    }
    state = state.copyWith(
      knowRememberQuestions: knowRememberQuestions,
      unKnowRememberQuestions: unKnowRememberQuestions,
    );
  }

  //知らないリストに追加
  void addUnKnownQuestion(QuizRememberScreenArguments arguments) {
    final knowRememberQuestions = [...state.knowRememberQuestions];
    final unKnowRememberQuestions = [...state.unKnowRememberQuestions];

    //すでに含まれている場合
    if (unKnowRememberQuestions
        .contains(arguments.item.rememberQuestions[state.quizIndex])) {
    }
    //知ってるリストに含まれている場合
    else if (knowRememberQuestions
        .contains(arguments.item.rememberQuestions[state.quizIndex])) {
      knowRememberQuestions
          .remove(arguments.item.rememberQuestions[state.quizIndex]);
      unKnowRememberQuestions
          .add(arguments.item.rememberQuestions[state.quizIndex]);
    }
    //それ以外
    else {
      unKnowRememberQuestions
          .add(arguments.item.rememberQuestions[state.quizIndex]);
    }
    state = state.copyWith(
      knowRememberQuestions: knowRememberQuestions,
      unKnowRememberQuestions: unKnowRememberQuestions,
    );
  }
}
