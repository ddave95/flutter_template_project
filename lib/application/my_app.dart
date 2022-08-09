import 'package:flutter/material.dart';
import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/router/app_route.dart';
import 'package:flutter_template_project/router/app_router.dart';

class MyApp extends StatelessWidget {
  final Environment environment;
  late final router = AppRouter(environment);

  MyApp({
    required this.environment,
    Key? key
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoute.myHome,
      onGenerateRoute: router.getRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
