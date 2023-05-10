
import 'package:demo/dio_helper/DioHelper.dart';
import 'package:demo/presentation/AddNewChild/AddNewChild.dart';
import 'package:demo/presentation/History/History.dart';
import 'package:demo/presentation/Notifications/Notifications.dart';
import 'package:demo/presentation/Screen/Add_Monay/AddMonay.dart';
import 'package:demo/presentation/Screen/Add_your_Son_is_Information/Add_Imfornation.dart';
import 'package:demo/presentation/Screen/Card%20info/Card%20info.dart';
import 'package:demo/presentation/Screen/Home/Home.dart';
import 'package:demo/presentation/Screen/Layers/Layers.dart';
import 'package:demo/presentation/Screen/Personal%20information/Personal%20information.dart';
import 'package:demo/screens/login/login_view.dart';
import 'package:demo/screens/register/register_view.dart';
import 'package:demo/screens/splash/splash_view.dart';
import 'package:flutter/material.dart';

import 'presentation/resources/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: const RegisterView(),
      theme: getApplicationTheme(),
    );
  }


}