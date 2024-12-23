import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:health_companion/providers/auth_provider.dart';
import 'package:health_companion/screens/splash_screen.dart';
import 'package:health_companion/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    debugPrint('Firebase initialization error: $e');
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Companion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Arial Black',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'Arial Black'),
          displayMedium: TextStyle(fontFamily: 'Arial Black'),
          displaySmall: TextStyle(fontFamily: 'Arial Black'),
          headlineMedium: TextStyle(fontFamily: 'Arial Black'),
          headlineSmall: TextStyle(fontFamily: 'Arial Black'),
          titleLarge: TextStyle(fontFamily: 'Arial Black'),
          bodyLarge: TextStyle(fontFamily: 'Arial Black'),
          bodyMedium: TextStyle(fontFamily: 'Arial Black'),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
