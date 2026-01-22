import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// أيقونة الإغلاق
class CloseIconButton extends StatelessWidget {
  final VoidCallback? onTap;

  const CloseIconButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TapEffect(
      onClick:
          onTap ??
          () {
            context.go(AppRouter.kHome);
          },
      child: const Icon(Icons.close, size: 32),
    );
  }
}

// أيقونة السلة
class CartIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  const CartIconButton({super.key,  this.onTap});

  @override
  Widget build(BuildContext context) {
    return TapEffect(
      onClick:  onTap ??
          () {
            // الانتقال للسله
          },
      child: const Icon(Icons.shopping_cart_outlined, size: 32),
    );
  }
}
