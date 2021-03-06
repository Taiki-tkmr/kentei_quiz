class I18n {
  static I18n? _instance;

  I18n._();

  factory I18n() => _instance ??= I18n._();

  ///アプリ全体
  String get appName => "Kentei Quiz";

  ///title
  String get titleStudy => "問題";
  String get titleReview => "復習";
  String get titleTest => "テスト";
  String get titleSetting => "設定";

  ///問題形式
  String get quizOneQuestion => "一問一答で学習する";
  String get quizFourChoice => "4択クイズで挑戦する";
  String get quizTrueFalse => "◯×クイズで挑戦する";
  String get quizFillBlank => "穴埋めクイズで挑戦する";

  ///Button
  String get buttonConfirm => "確認する";
  String get buttonKnow => "知っている";
  String get buttonUnKnow => "知らない";

  ///　問題画面
  String hideText(String ans) {
    switch (ans.length) {
      case 1:
        return caseHideText1;
      case 2:
        return caseHideText2;
      case 3:
        return caseHideText3;
      case 4:
        return caseHideText4;
      case 5:
        return caseHideText5;
      case 6:
        return caseHideText6;
      case 7:
        return caseHideText7;
      case 8:
        return caseHideText8;
      case 9:
        return caseHideText8;
      default:
        return caseHideText9;
    }
  }

  ///　テキスト候補
  String get caseHideText1 => "＿";
  String get caseHideText2 => "＿＿";
  String get caseHideText3 => "＿＿＿";
  String get caseHideText4 => "＿＿＿＿";
  String get caseHideText5 => "＿＿＿＿＿";
  String get caseHideText6 => "＿＿＿＿＿＿";
  String get caseHideText7 => "＿＿＿＿＿＿";
  String get caseHideText8 => "＿＿＿＿＿＿＿";
  String get caseHideText9 => "＿＿＿＿＿＿＿＿";
}
