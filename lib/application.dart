import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:spy/core/constants/rout_path.dart';
import 'package:spy/core/view/themes/themes.dart';
import 'package:spy/routes.dart';

class SpyGame extends StatelessWidget {
  const SpyGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onInit: GetStorage.init,
      title: "Spy",
      theme: AppTheme.dark,
      textDirection: TextDirection.rtl,
      getPages: Routs.routs,
      locale: const Locale('fa', 'IR'),
      initialRoute: RoutePath.root,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: ResponsiveWrapper.builder(
          AnnotatedRegion<SystemUiOverlayStyle>(
              value: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.dark,
              ),
              child: child!),
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.autoScale(360, name: MOBILE),
            ResponsiveBreakpoint.resize(480, name: TABLET),
          ],
        ),
      ),
    );
  }
}
