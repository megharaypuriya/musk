
import 'package:get/get.dart' show Get, Inst;
import 'package:meta/meta.dart';
import 'package:musk/src/services/connectivity_service.dart';

abstract class Repository {
  @protected
  bool get isConnected => Get.find<ConnectivityService>().isConnected;
}
