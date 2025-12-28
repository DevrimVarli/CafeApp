import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/adress/controller/selected_address.dart';
import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:cafe_app/utils/get_address_type.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class AdressChangeScreen extends ConsumerStatefulWidget {
  const AdressChangeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AdressChangeScreenState();
}

class _AdressChangeScreenState extends ConsumerState<AdressChangeScreen> {
  late Box<AddressModel> addressBox;

  @override
  void initState() {
    super.initState();
    addressBox = Hive.box<AddressModel>('adresler');
  }

  @override
  Widget build(BuildContext context) {
    AddressModel selectedAdress = ref.watch(selectedAddressProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'delivery_addresses'.tr(), // "Teslimat Adresleri"
            style: TextStyle(
              color: Colors.grey[900],
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ValueListenableBuilder<Box<AddressModel>>(
          valueListenable: addressBox.listenable(),
          builder: (BuildContext context, Box<AddressModel> box, _) {
            if (box.isEmpty) {
              return _buildEmptyState();
            }

            return ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 100),
              itemCount: box.length,
              itemBuilder: (BuildContext context, int index) {
                AddressModel? address = box.getAt(index);

                // Dismissible: Kaydırarak silme özelliği
                return Dismissible(
                  key: Key('${address?.cityName}_$index'), // Unique key önemli
                  direction: DismissDirection.endToStart,
                  onDismissed: (DismissDirection direction) {
                    if (address.title == selectedAdress.title) {
                      ref.invalidate(selectedAddressProvider);
                    }
                    box.delete(address.title);
                  },
                  background: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  child: PremiumCard(
                    addressModel: address!,
                    index: index,
                    adresBox: addressBox,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  // Boş Durum Tasarımı
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.map_outlined, size: 80, color: Colors.grey[400]),
          ),
          const SizedBox(height: 20),
          Text(
            'address_not_found'.tr(), // "Adres Bulunamadı"
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'start_by_adding_address'
                .tr(), // "Yeni bir adres ekleyerek başlayın."
            style: TextStyle(color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}

class PremiumCard extends ConsumerStatefulWidget {
  const PremiumCard({
    required this.addressModel,
    required this.index,
    required this.adresBox,
    super.key,
  });
  final AddressModel addressModel;
  final int index;
  final Box<AddressModel> adresBox;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PremiumCardState();
}

class _PremiumCardState extends ConsumerState<PremiumCard> {
  @override
  Widget build(BuildContext context) {
    AddressModel selectedAddress = ref.watch(selectedAddressProvider);

    if (selectedAddress.title.isEmpty) {
      selectedAddress = widget.adresBox.values.first;
    }
    bool isSelected = selectedAddress.title == widget.addressModel.title;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
        // --- DEĞİŞİKLİK BURADA ---
        // Eğer seçiliyse turuncu kenarlık, değilse kenarlık yok
        border: isSelected
            ? Border.all(color: AppColors.primaryOrange, width: 2)
            : null,
        // -------------------------
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.28),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          ref
              .read(selectedAddressProvider.notifier)
              .change(widget.addressModel);
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              // Sol taraftaki İkon Kutusu
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  // İsteğe bağlı: Seçiliyse ikon kutusunun rengini de değiştirebilirsin
                  color: isSelected
                      ? AppColors.primaryOrange
                      : AppColors.primaryOrange.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.location_on_rounded,
                  // İsteğe bağlı: Seçiliyse ikon beyaz olsun
                  color: isSelected ? Colors.white : AppColors.primaryOrange,
                ),
              ),
              const SizedBox(width: 16),

              // Orta Kısım: Yazılar
              Expanded(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.addressModel.cityName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3142),
                      ),
                    ),
                    Text(
                      '${getAddressType(widget.addressModel.type)} • ${widget.addressModel.districtName}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${widget.addressModel.phoneNumber} • ${widget.addressModel.fullName}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () => ref
                    .read(selectedAddressProvider.notifier)
                    .change(widget.addressModel),
                child: Icon(
                  isSelected
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: isSelected
                      ? AppColors.primaryOrange
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
