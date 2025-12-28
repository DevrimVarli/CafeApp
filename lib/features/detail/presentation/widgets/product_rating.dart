
import 'package:cafe_app/features/home/domain/coffie_rating_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key, required this.rating});
  final CoffieRatingModel rating; 

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const SizedBox(width: 4),
        Text(
          '${rating.average}',
          style: GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 4),
        Text(
          '(${rating.count})',
          style: TextStyle(fontSize: 12, color: Colors.grey[500]),
        ),
      ],
    );
  }
}
