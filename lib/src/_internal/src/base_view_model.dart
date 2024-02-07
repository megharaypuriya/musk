

part of internal;

/// The parent of all ViewModels.
@internal
abstract class BaseViewModel extends GetxController {
  /// {@macro musk.context}
  @protected
  BuildContext get context => _context;
  late BuildContext _context;
}
