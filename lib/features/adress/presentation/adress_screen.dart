import 'package:cafe_app/features/adress/controller/selected_addres_type.dart';
import 'package:cafe_app/features/adress/controller/selected_city_name.dart';
import 'package:cafe_app/features/adress/controller/selected_district_name.dart';
import 'package:cafe_app/features/adress/data/city_data_repository.dart';
import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:cafe_app/features/adress/domain/city_model.dart';
import 'package:cafe_app/features/adress/presentation/widgets/address_app_bar.dart';
import 'package:cafe_app/features/adress/presentation/widgets/card_shell.dart';
import 'package:cafe_app/features/adress/presentation/widgets/fancy_field.dart';
import 'package:cafe_app/features/adress/presentation/widgets/header_card.dart';
import 'package:cafe_app/features/adress/presentation/widgets/location_section.dart';
import 'package:cafe_app/features/adress/presentation/widgets/premium_snack.dart';
import 'package:cafe_app/features/adress/presentation/widgets/save_address_button.dart';
import 'package:cafe_app/utils/validators.dart';
import 'package:easy_localization/easy_localization.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce_flutter/adapters.dart';

class AddressScreen extends ConsumerStatefulWidget {
  const AddressScreen({super.key, this.address});
  final AddressModel? address;

  @override
  ConsumerState<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends ConsumerState<AddressScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _phoneCtrl = TextEditingController();
  final TextEditingController _addressCtrl = TextEditingController();
  final TextEditingController _noteCtrl = TextEditingController();

  late final Box<AddressModel> _adresBox;

  @override
  void initState() {
    super.initState();
    _adresBox = Hive.box<AddressModel>('adresler');

    AddressModel? a = widget.address;
    if (a != null) {
      _titleCtrl.text = a.title;
      _nameCtrl.text = a.fullName;
      _phoneCtrl.text = a.phoneNumber;

      _addressCtrl.text = a.streetAddress ?? '';
      _noteCtrl.text = a.addressNote ?? '';

      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(selectedCityNameProvider.notifier).change(a.cityName);
        ref.read(selectedDistrictNameProvider.notifier).change(a.districtName);
        ref.read(selectedAddresTypeProvider.notifier).change(a.type);
      });
    }
  }

  @override
  void dispose() {
    _titleCtrl.dispose();
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _addressCtrl.dispose();
    _noteCtrl.dispose();
    super.dispose();
  }

  void _save() {
    FocusScope.of(context).unfocus();

    String city = ref.read(selectedCityNameProvider);
    String district = ref.read(selectedDistrictNameProvider);
    int type = ref.read(selectedAddresTypeProvider);

    if (city.trim().isEmpty || district.trim().isEmpty) {
      showPremiumSnack(context, 'please_select_city_district'.tr()); 
      return;
    }

    if (!_formKey.currentState!.validate()) {
      showPremiumSnack(context, 'missing_fields_warning'.tr()); 
      return;
    }

    AddressModel model = AddressModel(
      type: type,
      title: _titleCtrl.text.trim(),
      fullName: _nameCtrl.text.trim(),
      phoneNumber: _phoneCtrl.text.trim(),
      cityName: city,
      districtName: district,

      streetAddress: _addressCtrl.text.trim().isEmpty
          ? null
          : _addressCtrl.text.trim(),
      addressNote: _noteCtrl.text.trim().isEmpty ? null : _noteCtrl.text.trim(),
    );

    String key = model.title.isEmpty
        ? DateTime.now().millisecondsSinceEpoch.toString()
        : model.title;

    _adresBox.put(key, model);

    showPremiumSnack(
      context,
      'address_saved_success'.tr(),
      success: true,
    ); 
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<List<CityModel>> asyncCities = ref.watch(
      cityDataRepositoryProvider,
    );

    String city = ref.watch(selectedCityNameProvider);
    String district = ref.watch(selectedDistrictNameProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F8),
      appBar: AddressAppBar(title: 'new_address'.tr()), 
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 14),
          child: SaveAddressButton(onPressed: _save),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 18),
        child: Column(
          spacing: 12,
          children: <Widget>[
            const HeaderCard(),
            CardShell(
              title: 'delivery_info'.tr(),
              child: Form(
                key: _formKey,
                child: Column(
                  spacing: 11,
                  children: <Widget>[
                    FancyField(
                      controller: _titleCtrl,
                      label: 'address_title'.tr(),
                      hint: 'address_title_hint'.tr(), 
                      prefix: Icons.bookmark_border_rounded,
                      validator: AddressValidators.title,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: FancyField(
                            controller: _nameCtrl,
                            label: 'name_surname'.tr(), 
                            hint: 'name_surname_placeholder'.tr(), 
                            prefix: Icons.person_outline_rounded,
                            validator: AddressValidators.fullName,
                          ),
                        ),
                        Expanded(
                          child: FancyField(
                            controller: _phoneCtrl,
                            label: 'phone'.tr(), 
                            hint: 'phone_hint'.tr(), 
                            prefix: Icons.phone_rounded,
                            keyboardType: TextInputType.phone,
                            validator: AddressValidators.phone,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CardShell(
              title: 'location'.tr(), 
              child: LocationSection(
                asyncCities: asyncCities,
                city: city,
                district: district,
                addressCtrl: _addressCtrl,
                noteCtrl: _noteCtrl,
                onCityChanged: (String? v) {
                  if (v == null) return;
                  ref.read(selectedCityNameProvider.notifier).change(v);
                  ref.read(selectedDistrictNameProvider.notifier).change('');
                },
                onDistrictChanged: (String? v) {
                  if (v == null) return;
                  ref.read(selectedDistrictNameProvider.notifier).change(v);
                },
              ),
            ),

            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }
}
