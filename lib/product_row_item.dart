import 'package:cupertino_store/model/product.dart';
import 'package:cupertino_store/styles.dart';
import 'package:flutter/cupertino.dart';

class ProductRowItem extends StatelessWidget {
  final Product product;
  final int index;
  final bool lastItem;

  const ProductRowItem({
    this.index,
    this.product,
    this.lastItem,
  });

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(),
            ),
          )
        ],
      ),
    );

    if (lastItem) return row;

    return Column(
      children: <Widget>[
        row,
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 16),
          child: Container(
            height: 1,
            color: Styles.productRowDivider,
          ),
        )
      ],
    );
  }
}
