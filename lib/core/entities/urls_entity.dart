import 'package:hive/hive.dart';
part 'urls_entity.g.dart';

@HiveType(typeId: 5)
class UrlsEntity extends HiveObject {
  @HiveField(0)
  final String? raw;
  @HiveField(1)
  final String? full;
  @HiveField(2)
  final String? regular;
  @HiveField(3)
  final String? small;
  @HiveField(4)
  final String? thumb;
  @HiveField(5)
  final String? smallS3;

  UrlsEntity({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });
}
