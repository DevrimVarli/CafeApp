import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:hive_ce/hive.dart';

double calculateTotalPrice(Box<BasketCoffieModel> sepetBox) {
  double total = 0;
  for (BasketCoffieModel item in sepetBox.values) {
    total += item.selectedSize.price * item.count;
  }
  return total;
}
