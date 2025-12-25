import 'package:flutter/material.dart';
import 'package:mvvmproject/core/utils/routes/routes.dart';
import 'package:mvvmproject/core/utils/routes/routes_name.dart';
import 'package:mvvmproject/view/cardview.dart';
import 'package:mvvmproject/view/viewcars.dart';
import 'package:mvvmproject/view/viewscreen.dart';
import 'package:mvvmproject/view/viewtaskscreen.dart';
import 'package:mvvmproject/viewmodel/cardviewmodel.dart';
import 'package:mvvmproject/viewmodel/countermodel.dart';
import 'package:mvvmproject/viewmodel/taskviewmodel.dart';
import 'package:provider/provider.dart';

// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       onGenerateRoute: Routes.generateRoute,
//       initialRoute: RoutesName.login,
//     );
//   }
// }
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (BuildContext context)=>Taskviewmodel(),
      child: MaterialApp(
        home: Viewtaskscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );

  }
}


