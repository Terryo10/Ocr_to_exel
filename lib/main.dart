import 'package:flutter/material.dart';
import 'package:someproj/ui/locator.dart';


import 'ui/app/router.gr.dart';

void main() {
  setupLocator();
  final _appRouter = AppRouter();
  runApp( MyApp(appRouter: _appRouter,));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MVVM THINGS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
