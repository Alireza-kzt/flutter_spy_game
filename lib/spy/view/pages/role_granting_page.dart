import 'package:flutter/material.dart';
import '../../controller/role_controller.dart';
import '../widgets/role_granting_widget.dart';

class RoleGrantingPage extends StatelessWidget {
  const RoleGrantingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: RoleController.to.pageController,
      children: [
        RoleGrantingWidget(),
        RoleGrantingWidget(),
        RoleGrantingWidget(),
      ],
    );
  }
}
