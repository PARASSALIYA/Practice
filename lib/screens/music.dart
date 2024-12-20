import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/musicmodel.dart';

class AlbumDetailsScreen extends StatefulWidget {
  @override
  _AlbumDetailsScreenState createState() => _AlbumDetailsScreenState();
}

class _AlbumDetailsScreenState extends State<AlbumDetailsScreen> {
  final AlbumService _albumService = AlbumService();
  Map<String, dynamic>? _albumData;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadAlbumDetails();
  }

  Future<void> _loadAlbumDetails() async {
    try {
      final data = await _albumService.fetchAlbumDetails();
      setState(() {
        _albumData = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Album Details')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _albumData == null
              ? const Center(child: Text('Failed to load album details'))
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Album Name: ${_albumData!['albums'][0]['name']}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Artist: ${_albumData!['albums'][0]['artists'][0]['name']}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Image.network(
                        _albumData!['albums'][0]['images'][0]['url'],
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
    );
  }
}
