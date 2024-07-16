import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/helperbook.dart';

class BookmarkProvider with ChangeNotifier {
  final BookmarkService _bookmarkService = BookmarkService();
  List<String> _bookmarks = [];

  List<String> get bookmarks => _bookmarks;

  BookmarkProvider() {
    loadBookmarks();
  }

  Future<void> loadBookmarks() async {
    _bookmarks = await _bookmarkService.getBookmarks();
    notifyListeners();
  }

  Future<void> addBookmark(String url) async {
    await _bookmarkService.saveBookmark(url);
    await loadBookmarks();
  }

  Future<void> removeBookmark(String url) async {
    await _bookmarkService.removeBookmark(url);
    await loadBookmarks();
  }

  Future<void> clearBookmarks() async {
    await _bookmarkService.clearBookmarks();
    await loadBookmarks();
  }
}
