// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class CoffieModelAdapter extends TypeAdapter<CoffieModel> {
  @override
  final typeId = 0;

  @override
  CoffieModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffieModel(
      id: (fields[0] as num).toInt(),
      categoryId: (fields[1] as num).toInt(),
      name: fields[2] as String,
      shortDescription: fields[3] as String,
      description: fields[4] as String,
      sizes: (fields[5] as List).cast<CoffieSizeModel>(),
      defaultSize: fields[6] as String,
      image: fields[7] as String,
      extrasAllowed: (fields[8] as List).cast<double>(),
      isAvailable: fields[9] as bool,
      isPopular: fields[10] as bool,
      tags: (fields[11] as List).cast<String>(),
      rating: fields[12] as CoffieRatingModel,
      nutrition: fields[13] as CoffieNutritionModel,
    );
  }

  @override
  void write(BinaryWriter writer, CoffieModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.categoryId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.shortDescription)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.sizes)
      ..writeByte(6)
      ..write(obj.defaultSize)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.extrasAllowed)
      ..writeByte(9)
      ..write(obj.isAvailable)
      ..writeByte(10)
      ..write(obj.isPopular)
      ..writeByte(11)
      ..write(obj.tags)
      ..writeByte(12)
      ..write(obj.rating)
      ..writeByte(13)
      ..write(obj.nutrition);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffieModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoffieSizeModelAdapter extends TypeAdapter<CoffieSizeModel> {
  @override
  final typeId = 1;

  @override
  CoffieSizeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffieSizeModel(
      size: fields[0] as String,
      price: (fields[1] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, CoffieSizeModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.size)
      ..writeByte(1)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffieSizeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoffieRatingModelAdapter extends TypeAdapter<CoffieRatingModel> {
  @override
  final typeId = 2;

  @override
  CoffieRatingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffieRatingModel(
      average: (fields[0] as num).toDouble(),
      count: (fields[1] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, CoffieRatingModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.average)
      ..writeByte(1)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffieRatingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoffieNutritionModelAdapter extends TypeAdapter<CoffieNutritionModel> {
  @override
  final typeId = 3;

  @override
  CoffieNutritionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffieNutritionModel(
      kcal: fields[0] == null ? 0 : (fields[0] as num).toInt(),
      sugar: fields[3] == null ? 0 : (fields[3] as num).toInt(),
      caffeine: fields[4] == null ? 0 : (fields[4] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, CoffieNutritionModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.kcal)
      ..writeByte(3)
      ..write(obj.sugar)
      ..writeByte(4)
      ..write(obj.caffeine);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffieNutritionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BasketCoffieModelAdapter extends TypeAdapter<BasketCoffieModel> {
  @override
  final typeId = 4;

  @override
  BasketCoffieModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BasketCoffieModel(
      coffieModel: fields[0] as CoffieModel,
      count: (fields[1] as num).toInt(),
      selectedSize: fields[2] as CoffieSizeModel,
    );
  }

  @override
  void write(BinaryWriter writer, BasketCoffieModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.coffieModel)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.selectedSize);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasketCoffieModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AddressModelAdapter extends TypeAdapter<AddressModel> {
  @override
  final typeId = 5;

  @override
  AddressModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddressModel(
      type: (fields[0] as num).toInt(),
      title: fields[1] as String,
      fullName: fields[2] as String,
      phoneNumber: fields[3] as String,
      cityName: fields[4] as String,
      districtName: fields[5] as String,
      streetAddress: fields[6] as String?,
      addressNote: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AddressModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.fullName)
      ..writeByte(3)
      ..write(obj.phoneNumber)
      ..writeByte(4)
      ..write(obj.cityName)
      ..writeByte(5)
      ..write(obj.districtName)
      ..writeByte(6)
      ..write(obj.streetAddress)
      ..writeByte(7)
      ..write(obj.addressNote);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
