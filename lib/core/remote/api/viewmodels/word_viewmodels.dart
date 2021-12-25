import 'package:flutter/material.dart';
import '../../../locator/locator.dart';
import '../models/word_model.dart';
import '../services/base_service.dart';
import '../repository/repository.dart';

enum ViewState { idle, busy }

class WordViewModelAPI with ChangeNotifier implements Base {
  final WordRepository _userRepository = locator<WordRepository>();

  @override
  Future<dynamic> fetchData(String text) async {
    if (text == "") {
      print("--------->" + text);
    } else {}
    try {
      return await _userRepository.fetchData(text);
    } catch (e) {
      debugPrint("ERROR IN VIEWMODEL --> $e");
      return WordModel();
    } finally {}
  }
}
