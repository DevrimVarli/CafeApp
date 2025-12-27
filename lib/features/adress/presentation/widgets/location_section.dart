import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/adress/domain/city_model.dart';
import 'package:cafe_app/features/adress/domain/districts_model.dart';
import 'package:cafe_app/features/adress/presentation/widgets/dropdown_shell.dart';
import 'package:cafe_app/features/adress/presentation/widgets/fancy_field.dart';
import 'package:cafe_app/utils/first_where_or_null_exensiont.dart';
import 'package:cafe_app/utils/validators.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({
    super.key,
    required this.asyncCities,
    required this.city,
    required this.district,
    required this.onCityChanged,
    required this.onDistrictChanged,
    required this.addressCtrl,
    required this.noteCtrl,
  });

  final AsyncValue<List<CityModel>> asyncCities;
  final String? city;
  final String? district;
  final ValueChanged<String?> onCityChanged;
  final ValueChanged<String?> onDistrictChanged;
  final TextEditingController addressCtrl;
  final TextEditingController noteCtrl;

  @override
  Widget build(BuildContext context) {
    return asyncCities.when(
      data: (List<CityModel> citiesData) {
        List<String> cityNames = citiesData
            .map((CityModel c) => c.name)
            .toList();

        String? safeCity = (city != null && cityNames.contains(city))
            ? city
            : null;

        CityModel? selectedCity = safeCity == null
            ? null
            : citiesData.firstWhereOrNull((CityModel c) => c.name == safeCity);

        List<String> districtNames = selectedCity == null
            ? <String>[]
            : selectedCity.districts.map((DistrictsModel d) => d.name).toList();

        String? safeDistrict =
            (district != null && districtNames.contains(district))
            ? district
            : null;

        return Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: DropdownShell(
                    label: 'city'.tr(), // "Şehir"
                    value: safeCity,
                    items: cityNames,
                    icon: Icons.location_city_rounded,
                    onChanged: onCityChanged,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownShell(
                    label: 'district'.tr(), // "İlçe"
                    value: safeDistrict,
                    items: districtNames,
                    icon: Icons.map_outlined,
                    onChanged: onDistrictChanged,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            FancyField(
              controller: addressCtrl,
              label: 'address_label'.tr(), // "Adres"
              hint: 'address_details_hint'.tr(), // "Mahalle, sokak..."
              prefix: Icons.home_outlined,
              maxLines: 3,
              validator: AddressValidators.address,
            ),
            const SizedBox(height: 12),
            FancyField(
              controller: noteCtrl,
              label: 'address_note_label'.tr(), // "Adres Notu (Opsiyonel)"
              hint: 'address_note_hint'.tr(), // "Kapı şifresi, tarif..."
              prefix: Icons.sticky_note_2_outlined,
              maxLines: 2,
            ),
          ],
        );
      },
      loading: () => const Padding(
        padding: EdgeInsets.symmetric(vertical: 18),
        child: Center(
          child: CircularProgressIndicator(color: AppColors.primaryOrange),
        ),
      ),
      error: (Object e, StackTrace s) => Padding(
        padding: const EdgeInsets.all(12),
        // Hata mesajını parametreli olarak çeviriyoruz
        child: Text('city_list_error'.tr(namedArgs: <String, String>{'error': '$e'})),
      ),
    );
  }
}
