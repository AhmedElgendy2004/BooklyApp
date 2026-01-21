// GoRouter configuration
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: '/home',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const HomeView(),
            transitionDuration: const Duration(
              milliseconds: 600,
            ), // مدة الانيميشن
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  // تأثير التلاشي (Fade)
                  return FadeTransition(
                    opacity: CurveTween(
                      curve: Curves.easeInOut,
                    ).animate(animation),
                    child: child,
                  );
                },
          );
        },
      ),
      GoRoute(
        path: '/book_details',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
