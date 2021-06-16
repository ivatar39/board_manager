import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/ui/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Logger.addStrategy(DebugLogStrategy());
  await configureInjection(Environment.dev);

  runApp(const App());
}
