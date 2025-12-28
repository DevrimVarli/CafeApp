import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class StoresEmptyState extends StatelessWidget {
  const StoresEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.storefront_outlined, size: 64, color: Colors.grey[400]),
          Text(
            'branch_not_found'.tr(),
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
