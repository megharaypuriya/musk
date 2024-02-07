import 'package:musk/musk.dart' show ViewModel;
import 'package:flutter/material.dart';

class HomeViewModel extends ViewModel {
  final String title = 'flutter_musk';

  void navToNext() {
    Navigator.push(
      context, // You can accesses the BuildContext globally in your ViewModel.
      MaterialPageRoute(
        builder: (context) {
          return Container();
        },
      ),
    );
  }
}
