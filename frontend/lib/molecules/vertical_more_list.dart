import 'package:flutter/material.dart';
import 'package:frontend/atom/text_title.dart';
import 'package:frontend/product.dart';
import 'package:frontend/util/constants.dart';

import '../atom/product_card.dart';

class VerticalMoreList extends StatelessWidget {
  final String title;
  final List<Product> productList;

  const VerticalMoreList({
    super.key,
    required this.title,
    required this.productList
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: TextTitle(title: title)),
              Flexible(
                child: TextButton(onPressed: () {}, child: Text(
                  '더보기',
                  textAlign: TextAlign.right,
                )),
              )
            ],
          ),
          SizedBox(height: 10),
          GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 5,
            crossAxisCount: 2,
            children: [
              for (int i = 0; i < 4; i++)
                ProductCard(
                  product: productList[i],
                )
            ],
          )
        ],
      ),
    );
  }
}
