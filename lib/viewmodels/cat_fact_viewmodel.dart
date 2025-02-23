import 'package:flutter/material.dart';
import '../models/cat_fact.dart';
import '../repositories/cat_fact_repository.dart';

enum LoadingStatus { loading, completed, error }

class CatFactViewModel extends ChangeNotifier {
  final CatFactRepository repository;

  CatFact? _catFact;
  String? _errorMessage;
  LoadingStatus _status = LoadingStatus.loading;

  CatFactViewModel({required this.repository}) {
    fetchCatFact();
  }

  CatFact? get catFact => _catFact;
  String? get errorMessage => _errorMessage;
  LoadingStatus get status => _status;

  Future<void> fetchCatFact() async {
    _status = LoadingStatus.loading;
    notifyListeners();

    try {
      _catFact = await repository.fetchCatFact();
      _status = LoadingStatus.completed;
    } catch (e) {
      _errorMessage = e.toString();
      _status = LoadingStatus.error;
    }
    notifyListeners();
  }
}
