import 'package:get/get.dart';
import 'package:spy/spy/role_bindings.dart';
import 'package:spy/spy/setup_bindings.dart';
import 'package:spy/spy/spy_timer_bindings.dart';
import 'package:spy/spy/view/pages/setup_game_page.dart';
import 'package:spy/spy/view/pages/timer_page.dart';

import 'core/constants/rout_path.dart';
import 'spy/view/pages/role_granting_page.dart';


class Routs {
  static List<GetPage> routs = <GetPage>[
    GetPage(
      name: RoutPath.root,
      page: () => const SetupGamePage(),
      binding: SetupBindings(),
    ),
    GetPage(
      name: RoutPath.role,
      page: () => const RoleGrantingPage(),
      binding: RoleBindings(),
    ),
    GetPage(
      name: RoutPath.timer,
      page: () => const TimerPage(),
      binding: SpyTimerBindings(),
    ),
  ];
}
