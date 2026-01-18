import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:flutter/material.dart';

class BooKDetailsBottom extends StatelessWidget {
  const BooKDetailsBottom({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width * 0.4,
          height: 50,
          decoration: BoxDecoration(
            color: KWhite,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("19.99", style: Styles.text20.copyWith(color: Colors.black)),

              Text(" \$", style: Styles.text20.copyWith(color: Colors.black)),
            ],
          ),
        ),
        TapEffect(
          onClick: () {},
          child: Container(
            width: width * 0.4,
            height: 50,
            decoration: BoxDecoration(
              color: KSacandColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Center(child: Text("Free preview", style: Styles.text16)),
          ),
        ),
      ],
    );
  }
}
