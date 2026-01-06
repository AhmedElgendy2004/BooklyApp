import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:bookly_app/Core/utils/style.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(AppAssets.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.08),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "The Jungle Book of Rudyard Kipling",
                    style: Styles.text20.copyWith(
                      fontFamily: KTitleBookFontFamily,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "by Rudyard Kipling",
                    style: Styles.text14gray,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("19.99", style: Styles.text20),
                      const Text(" \$", style: Styles.text20),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[400],
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            Text("4.8", style: Styles.text16),
                            const SizedBox(width: 5),
                            Text("(2347)", style: Styles.text14gray),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
