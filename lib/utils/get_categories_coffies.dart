import 'package:cafe_app/features/home/domain/categories_model.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';

List<CoffieModel> getCategoriesCoffies(
  List<CoffieModel> coffies,
  int index,
  List<CategoriesModel> categoriesList,
) {
  if (categoriesList[index].id == 0) {
    return coffies;
  } else {
    return coffies
        .where((CoffieModel e) => e.categoryId == categoriesList[index].id)
        .toList();
  }
}
