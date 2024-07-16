import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/provider.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchHistoryProvider = Provider.of<SearchHistoryProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (term) {
                searchHistoryProvider.addSearchTerm(term);
              },
            ),
            const SizedBox(height: 20),
            if (searchHistoryProvider.searchHistory.isEmpty)
              const Text('No search history found.'),
            if (searchHistoryProvider.searchHistory.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: searchHistoryProvider.searchHistory.length,
                  itemBuilder: (context, index) {
                    final term = searchHistoryProvider.searchHistory[index];
                    return ListTile(
                      title: Text(term),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          searchHistoryProvider.removeSearchTerm(term);
                        },
                      ),
                    );
                  },
                ),
              ),
            if (searchHistoryProvider.searchHistory.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  searchHistoryProvider.clearSearchHistory();
                },
                child: const Text('Clear Search History'),
              ),
          ],
        ),
      ),
    );
  }
}
