import 'package:class_carrot_market_v1/screens/home/components/product_detail.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductItem extends StatelessWidget {
  // 데이터를 받을 예정
  final Product product;
  const ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0,),
          // productDetail()
          ProductDetail(product: product),

        ],
      ),

    );

  }
}

