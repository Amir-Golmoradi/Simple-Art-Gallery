import 'package:flutter/material.dart';
import 'package:modern_shop/navigation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: kIsWeb
  //       ? HydratedStorage.webStorageDirectory
  //       : await getTemporaryDirectory(),
  // );

  runApp(
    ResponsiveSizer(
      maxMobileWidth: 370,
      maxTabletWidth: 700,
      builder: (context, orientation, screenType) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoute().router,
      ),
    ),
  );
}
