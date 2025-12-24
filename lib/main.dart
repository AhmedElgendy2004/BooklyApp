import 'package:bookly_app/Core/Theme/app_color.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.background),
        /*ده بيشغّل Material Design 3 (M3)
🔹 مميزاته:
تصميم أحدث
أزرار أنعم
ألوان ديناميكية
تجربة أقرب لتطبيقات Google الحديثة */
        useMaterial3: true,
      ),
    );
  }
}
