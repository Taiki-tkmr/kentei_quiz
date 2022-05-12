part of 'quiz_one_question_screen.dart';

class _Body extends ConsumerWidget {
  const _Body(this.arguments);

  final QuizOneQuestionScreenArguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAns = ref.watch(quizOneQuestionScreenControllerProvider).isAnsView;

    return Column(
      children: [
        ///問題形式
        Container(
          height: context.height * 0.05,
          color: context.colors.main10,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  arguments.quizStyle,
                  style: context.texts.subtitle1,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        const Spacer(),

        ///問題画面
        Card(
          elevation: 3,
          child: Container(
            width: context.width * 0.85,
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: context.height * 0.45,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Spacer(),

                      ///問題文
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: AutoSizeText(
                          isAns
                              ? arguments.item.oneQuestions[0].question
                              : arguments.item.oneQuestions[0].question
                                  .replaceAll(
                                      arguments.item.oneQuestions[0].ans,
                                      I18n().hideText(
                                          arguments.item.oneQuestions[0].ans)),
                          style: context.texts.bodyText1,
                          minFontSize: 20,
                        ),
                      ),
                      const Spacer(),

                      ///問題数と進行数
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            const Spacer(),
                            AutoSizeText(
                              "0",
                              style: context.texts.subtitle1,
                              minFontSize: 20,
                            ),
                            const Text("/"),
                            AutoSizeText(
                              oneQuestions1.length.toString(),
                              style: context.texts.bodyText1,
                              minFontSize: 16,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: context.colors.dark54),

                ///確認ボタン
                if (isAns)
                  Row(
                    ///知らない
                    children: [
                      GestureDetector(
                        onTap: () => ref
                            .read(quizOneQuestionScreenControllerProvider
                                .notifier)
                            .tapUnkowButton(),
                        child: Container(
                          width: context.width * 0.42,
                          height: context.height * 0.1,
                          color: context.colors.orange100.withOpacity(0.2),
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            I18n().buttonUnKnow,
                            style: context.texts.bodyText1
                                ?.copyWith(color: Colors.redAccent.shade100),
                            minFontSize: 18,
                          ),
                        ),
                      ),

                      ///境界線
                      Container(
                        height: context.height * 0.1,
                        width: context.height * 0.002,
                        color: context.colors.dark12,
                      ),

                      ///知っている
                      GestureDetector(
                        onTap: () => ref
                            .read(quizOneQuestionScreenControllerProvider
                                .notifier)
                            .tapKnowButton(),
                        child: Container(
                          width: context.width * 0.42,
                          height: context.height * 0.1,
                          color: context.colors.orange100.withOpacity(0.2),
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            I18n().buttonKnow,
                            style: context.texts.bodyText1
                                ?.copyWith(color: Colors.green.shade400),
                            minFontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                else
                  GestureDetector(
                    onTap: () => ref
                        .read(quizOneQuestionScreenControllerProvider.notifier)
                        .tapConfirmButton(),
                    child: Container(
                      width: context.height * 0.85,
                      height: context.height * 0.1,
                      color: context.colors.orange100.withOpacity(0.2),
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        I18n().buttonConfirm,
                        style: context.texts.subtitle1,
                        minFontSize: 16,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        const Spacer(),

        ///知っている、知らないの問題判別
        Container(
          height: context.height * 0.07,
          alignment: Alignment.center,
          color: context.colors.main10,
          child: Row(
            children: const [
              Text("何周目"),
              VerticalDivider(),
              Spacer(),
              Text("知っている"),
              Spacer(),
              VerticalDivider(),
              Spacer(),
              Text("知らない"),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
