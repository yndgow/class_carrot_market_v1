import 'package:class_carrot_market_v1/models/product.dart';
import 'package:class_carrot_market_v1/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded( // 확장하기
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.title, style: textTheme().bodyLarge,),
            SizedBox(height: 5,),
            Text('${product.address} ． ${product.publishedAt}',),
            SizedBox(height: 5,),
            Row(
              children: [
                Text('${_numberToStringFormat(product.price)} 원'),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Visibility(
                  visible: product.commentsCount > 0,
                  child:
                  _buildIconButtonRow(product.commentsCount, Icon(CupertinoIcons.chat_bubble_2,)),
                ),
                Visibility(
                  visible: product.heartCount > 0,
                    child: _buildIconButtonRow(product.heartCount, Icon(CupertinoIcons.heart,))),
              ],
            ),
          ],
        ),
    );
  }
}

String _numberToStringFormat(String price){
  final formatter = NumberFormat('#,###');
  return formatter.format(int.parse(price));
}


Row _buildIconButtonRow(int count, Icon icon) {
    return Row(
        children: [
          icon,
          SizedBox(width: 8,),
          Text('${count}'),
          SizedBox(width: 8,),
        ],
    );

}