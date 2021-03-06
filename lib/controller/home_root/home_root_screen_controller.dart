// import 'package:rxdart/rxdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'home_root_screen_state.dart';

final homeRootScreenControllerProvider =
    StateNotifierProvider<HomeRootScreenController, HomeRootScreenState>(
  (ref) => HomeRootScreenController(ref: ref),
);

class HomeRootScreenController extends StateNotifier<HomeRootScreenState>
    with LocatorMixin {
  HomeRootScreenController({required this.ref})
      : super(const HomeRootScreenState());

  final Ref ref;

  @override
  void dispose() {
    super.dispose();
  }

  ///BttomNavigationBarå¤‰æ›´
  void changeTabIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
