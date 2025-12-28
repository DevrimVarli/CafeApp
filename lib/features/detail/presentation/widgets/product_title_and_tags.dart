
// 3. Başlık ve Etiketler Bileşeni
import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTitleAndTags extends StatelessWidget {
  const ProductTitleAndTags({super.key, required this.coffieModel});
  final CoffieModel coffieModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          coffieModel.name,
          style: GoogleFonts.sora(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 30,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffieModel.tags.length,
                  separatorBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: Text(
                        '/',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    String tag = coffieModel.tags[index];
                    return Center(
                      child: Text(
                        tag.isNotEmpty
                            ? '${tag[0].toUpperCase()}${tag.substring(1)}'
                            : tag,
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children:
                    <IconData>[
                          Icons.delivery_dining,
                          Icons.coffee,
                          Icons.coffee_maker,
                        ]
                        .map(
                          (IconData icon) => Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                icon,
                                size: 16,
                                color: AppColors.primaryOrange,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
