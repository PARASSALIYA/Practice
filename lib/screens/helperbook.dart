import 'package:shared_preferences/shared_preferences.dart';

class BookmarkService {
  static const _bookmarksKey = 'bookmarks';

  Future<void> saveBookmark(String url) async {
    final prefs = await SharedPreferences.getInstance();
    final bookmarks = await getBookmarks();
    if (!bookmarks.contains(url)) {
      bookmarks.add(url);
      await prefs.setStringList(_bookmarksKey, bookmarks);
    }
  }

  Future<List<String>> getBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_bookmarksKey) ?? [];
  }

  Future<void> removeBookmark(String url) async {
    final prefs = await SharedPreferences.getInstance();
    final bookmarks = await getBookmarks();
    bookmarks.remove(url);
    await prefs.setStringList(_bookmarksKey, bookmarks);
  }

  Future<void> clearBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_bookmarksKey);
  }
}
