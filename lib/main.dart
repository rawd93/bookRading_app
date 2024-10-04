import 'package:bookrading_app/Features/Splash/presentation/Views/Widgets/splash_View.dart';
import 'package:bookrading_app/core/Funection/App_routes.dart';
import 'package:bookrading_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const BookRading());
}

class BookRading extends StatelessWidget {
  const BookRading({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      // home: SplashView(),
    );
  }
}
