import 'package:flutter/material.dart';
import 'package:mvvmproject/core/utils/routes/routes.dart';
import 'package:mvvmproject/core/utils/routes/routes_name.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RoutesName.login,
    );
  }
}
