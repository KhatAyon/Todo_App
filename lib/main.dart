import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/controllers/todo_controller.dart';
import 'package:todoapp/create_todo.dart';
import 'package:todoapp/home_view.dart';
import 'package:todoapp/modules/todo_models.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';




void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Awesome Todo',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(37, 43, 103, 1),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(37, 43, 103, 1), 
              elevation: 0,
              ),
              ),
      home: const HomeView(),
    );
  }
}