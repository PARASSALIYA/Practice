import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/helper.dart';

class SearchHistoryProvider with ChangeNotifier {
  final PreferencesService _preferencesService = PreferencesService();
  List<String> _searchHistory = [];

  List<String> get searchHistory => _searchHistory;

  SearchHistoryProvider() {
    _loadSearchHistory();
  }

  Future<void> _loadSearchHistory() async {
    _searchHistory = await _preferencesService.getSearchHistory();
    notifyListeners();
  }

  Future<void> addSearchTerm(String term) async {
    if (term.isNotEmpty && !_searchHistory.contains(term)) {
      _searchHistory.insert(0, term); // Add the new term at the top
      await _preferencesService.saveSearchHistory(_searchHistory);
      notifyListeners();
    }
  }

  Future<void> removeSearchTerm(String term) async {
    _searchHistory.remove(term);
    await _preferencesService.saveSearchHistory(_searchHistory);
    notifyListeners();
  }

  Future<void> clearSearchHistory() async {
    _searchHistory.clear();
    await _preferencesService.clearSearchHistory();
    notifyListeners();
  }
}
