// GoRouter configuration
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Search/presentation/view/search_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kHome = '/home';
  static const kBookDetails = '/book_details';
  static const kSearchView = '/search';

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplash, builder: (context, state) => const SplashView()),
      GoRoute(path: kHome, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetails,
        pageBuilder: (context, state) => buildPageWithSlideTransition(
          context: context,
          state: state,
          child: const BookDetailsView(),
        ),
      ),
      GoRoute(
        path: AppRouter.kSearchView,
        pageBuilder: (context, state) => buildPageWithTransition(
          context: context,
          state: state,
          child: const SearchView(),
        ),
      ),
    ],
  );
}

CustomTransitionPage buildPageWithTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    // --- هنا نحدد مدة الانتقال (مثلاً ثانية واحدة) ---
    transitionDuration: const Duration(milliseconds: 500), // وقت الدخول
    reverseTransitionDuration: const Duration(milliseconds: 500), // وقت الرجوع

    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // نستخدم FadeTransition عشان نلاحظ فرق الوقت
      return FadeTransition(opacity: animation, child: child);
    },
  );
}

CustomTransitionPage buildPageWithSlideTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 400),

    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // تعريف حركة الـ Slide من تحت لفوق
      // Offset(0, 1) تعني البداية من تحت الشاشة تماماً
      // Offset(0, 0) تعني الوصول لمكانها الطبيعي
      return SlideTransition(
        position:
            Tween<Offset>(
              begin: const Offset(0, 1), // يبدأ من الأسفل
              end: Offset.zero, // ينتهي في مكانه
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeOut, // يجعل الحركة تبدأ سريعة ثم تهدأ (سلسة)
              ),
            ),
        child: child,
      );
    },
  );
}
