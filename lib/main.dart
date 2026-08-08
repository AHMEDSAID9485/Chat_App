import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/views/Loginviews.dart';
import 'package:chatapp/views/Regesterviews.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Loginviews.id : (Contexr) => Loginviews(),
        RegisterViews.id : (context) => RegisterViews()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: Loginviews.id,
    );
  }
}