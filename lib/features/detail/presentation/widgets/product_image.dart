
// 2. Resim Bileşeni
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Hero(
        tag: imageUrl,
        child: Image.network(
          imageUrl,
          width: double.infinity,
          height: size.height * 0.28,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Container(
            height: size.height * 0.28,
            color: Colors.grey.shade300,
            child: const Icon(Icons.coffee, size: 50, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
