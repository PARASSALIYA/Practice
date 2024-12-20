import 'package:http/http.dart' as http;
import 'dart:convert';

class AlbumService {
  static const String _baseUrl =
      'https://spotify23.p.rapidapi.com/albums/?ids=';
  static const String _albumId = '3IBcauSj5M2A6lTeffJzdv';
  static const Map<String, String> _headers = {
    'x-rapidapi-host': 'spotify23.p.rapidapi.com',
    'x-rapidapi-key': '15e08b4c8dmsh6070c2aa3738a3cp145e39jsnd649680af011',
  };

  Future<Map<String, dynamic>> fetchAlbumDetails() async {
    final url = '$_baseUrl$_albumId';
    final response = await http.get(Uri.parse(url), headers: _headers);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load album details');
    }
  }
}
