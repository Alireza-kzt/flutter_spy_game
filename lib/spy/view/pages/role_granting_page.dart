import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spy/spy/controller/spy_controller.dart';

import '../../controller/role_controller.dart';
import '../widgets/role_granting_widget.dart';

class RoleGrantingPage extends StatelessWidget {
  const RoleGrantingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: RoleController.to.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (int i = 0; i < SpyController.to.players.value; i++)
              Obx(
                () => RoleGrantingWidget(
                  isLastRole: SpyController.to.players.value - 1 == i,
                  seen: RoleController.to.seen.value,
                  word: RoleController.to.spies.contains(i) ? 'جاسوس' : RoleController.to.word,
                  onGrantPressed: RoleController.to.onGrantPressed,
                  onSeenPressed: RoleController.to.onSeenPressed,
                  onFinishedPressed: RoleController.to.startGame,
                ),
              ),
          ],
        ),
        Positioned(top: 0, left: 16, right: 16, height: 230, child: SvgPicture.asset('assets/images/spy.svg', height: 230)),
      ],
    );
  }
}
