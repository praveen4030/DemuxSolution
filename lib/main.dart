import 'package:demux_assignment/injection.dart';
import 'package:demux_assignment/presentation/core/pages/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();

  runApp(const AppWidget());
}
