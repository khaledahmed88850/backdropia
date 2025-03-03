// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WallpaperEntityAdapter extends TypeAdapter<WallpaperEntity> {
  @override
  final int typeId = 6;

  @override
  WallpaperEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WallpaperEntity(
      id: fields[0] as String,
      urls: fields[1] as UrlsEntity,
    );
  }

  @override
  void write(BinaryWriter writer, WallpaperEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.urls);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WallpaperEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
