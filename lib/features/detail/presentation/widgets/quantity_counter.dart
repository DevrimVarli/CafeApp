
import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/detail/controller/coffie_count_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityCounter extends ConsumerWidget {
  const QuantityCounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(coffieCountControllerProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () =>
              ref.read(coffieCountControllerProvider.notifier).decrement(),
          icon: const Icon(Icons.remove, color: AppColors.primaryOrange),
        ),
        Text(
          counter.toString(),
          style: GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        IconButton(
          onPressed: () =>
              ref.read(coffieCountControllerProvider.notifier).increment(),
          icon: const Icon(Icons.add, color: AppColors.primaryOrange),
        ),
      ],
    );
  }
}
