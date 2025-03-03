// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urls_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UrlsEntityAdapter extends TypeAdapter<UrlsEntity> {
  @override
  final int typeId = 5;

  @override
  UrlsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UrlsEntity(
      raw: fields[0] as String?,
      full: fields[1] as String?,
      regular: fields[2] as String?,
      small: fields[3] as String?,
      thumb: fields[4] as String?,
      smallS3: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UrlsEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.raw)
      ..writeByte(1)
      ..write(obj.full)
      ..writeByte(2)
      ..write(obj.regular)
      ..writeByte(3)
      ..write(obj.small)
      ..writeByte(4)
      ..write(obj.thumb)
      ..writeByte(5)
      ..write(obj.smallS3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UrlsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
