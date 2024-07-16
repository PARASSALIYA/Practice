import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/providerbook.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookmarkProvider = Provider.of<BookmarkProvider>(context);
    final TextEditingController urlController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Bookmark App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: urlController,
              decoration: const InputDecoration(
                labelText: 'Enter URL',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (urlController.text.isNotEmpty) {
                  bookmarkProvider.addBookmark(urlController.text);
                  urlController.clear();
                }
              },
              child: const Text('Add Bookmark'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: bookmarkProvider.bookmarks.isEmpty
                  ? const Center(child: Text('No bookmarks yet.'))
                  : ListView.builder(
                      itemCount: bookmarkProvider.bookmarks.length,
                      itemBuilder: (context, index) {
                        final url = bookmarkProvider.bookmarks[index];
                        return ListTile(
                          title: Text(url),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              bookmarkProvider.removeBookmark(url);
                            },
                          ),
                        );
                      },
                    ),
            ),
            if (bookmarkProvider.bookmarks.isNotEmpty)
              ElevatedButton(
                onPressed: bookmarkProvider.clearBookmarks,
                child: const Text('Clear All Bookmarks'),
              ),
          ],
        ),
      ),
    );
  }
}
