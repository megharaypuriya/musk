library musk;

import 'package:musk/src/_internal/internal.dart';
import 'package:musk/src/contracts/presentation/view_model.dart';
import 'package:musk/src/services/connectivity_service.dart';
import 'package:musk/src/services/preferences_service.dart';
import 'package:musk/src/services/theme_mode_service.dart';
import 'package:get/get.dart';

export 'package:musk/src/contracts/binding.dart';
export 'package:musk/src/contracts/crud_operation.dart';
export 'package:musk/src/contracts/data/data_sources/local_data_source.dart';
export 'package:musk/src/contracts/data/data_sources/remote_data_source.dart';
export 'package:musk/src/contracts/data/model.dart';
export 'package:musk/src/contracts/domain/entity.dart';
export 'package:musk/src/contracts/domain/service.dart';
export 'package:musk/src/contracts/domain/usecase.dart';
export 'package:musk/src/contracts/params.dart';
export 'package:musk/src/contracts/presentation/middleware.dart';
export 'package:musk/src/contracts/presentation/page.dart';
export 'package:musk/src/contracts/presentation/screen.dart';
export 'package:musk/src/contracts/presentation/view.dart';
export 'package:musk/src/contracts/presentation/view_model.dart';
export 'package:musk/src/contracts/repository.dart';
export 'package:musk/src/services/connectivity_service.dart';
export 'package:musk/src/services/preferences_service.dart';
export 'package:musk/src/services/theme_mode_service.dart';

/// A pre registered [ViewModel], this allows [View] and [Screen] to non specify something custom.
class _ViewModel extends ViewModel {}

/// The glue between the musk widgets and your app.
class Musk {
  const Musk._internal();

  /// The current [Musk], if one has been created.
  static Musk get instance => _instance;
  static const Musk _instance = Musk._internal();

  /// The place in where preregistered dependencies get registered.
  void initDependencies() {
    Get.put<BaseViewModel>(_ViewModel());
    Get.put(ThemeModeService());
  }

  Future<void> initAsyncServices() async {
    await Get.putAsync(() => ConnectivityService().init());
    await Get.putAsync(() => PreferencesService().init());
  }
}
