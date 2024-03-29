


import 'package:musk/src/contracts/domain/entity.dart';

abstract class Model<T extends Entity> {
  T toEntity();

  Map<String, dynamic> toJson();
}
