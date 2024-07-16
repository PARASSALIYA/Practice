// // // // import 'package:flutter/cupertino.dart';
// // // // import 'package:pr_4_practice/screens/ios_sliver.dart';
// // // //
// // // // void main() {
// // // //   runApp(
// // // //     const MyApp(),
// // // //   );
// // // // }
// // // //
// // // // class MyApp extends StatelessWidget {
// // // //   const MyApp({super.key});
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return const CupertinoApp(
// // // //       debugShowCheckedModeBanner: false,
// // // //       home: IosSliverPage(),
// // // //     );
// // // // return MaterialApp(
// // // //   debugShowCheckedModeBanner: false,
// // // //   routes: {
// // // //     '/': (context) => const Homepage(),
// // // //     'categorypage': (context) => const CategoryPage(),
// // // //     'detailpage': (context) => const DetailPage(),
// // // //     'cartpage': (context) => const CartPage(),
// // // //     'sliver': (context) => const SliverPage(),
// // // //     'ios_sliver': (context) => const IosSliverPage(),
// // // //   },
// // // // );
// // // //   }
// // // // }
// // //
// // // // import 'package:flutter/material.dart';
// // // // import 'package:pr_4_practice/screens/provider.dart';
// // // // import 'package:pr_4_practice/screens/search.dart';
// // // // import 'package:provider/provider.dart';
// // // //
// // // // void main() {
// // // //   runApp(
// // // //     ChangeNotifierProvider(
// // // //       create: (_) => SearchHistoryProvider(),
// // // //       child: const MyApp(),
// // // //     ),
// // // //   );
// // // // }
// // // //
// // // // class MyApp extends StatelessWidget {
// // // //   const MyApp({Key? key}) : super(key: key);
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       title: 'Search History App',
// // // //       theme: ThemeData.light(),
// // // //       home: const SearchPage(),
// // // //     );
// // // //   }
// // // // }
// // //
// // // // import 'package:flutter/material.dart';
// // // // import 'package:pr_4_practice/screens/bookmark.dart';
// // // // import 'package:pr_4_practice/screens/providerbook.dart';
// // // // import 'package:provider/provider.dart';
// // // //
// // // //
// // // // void main() {
// // // //   runApp(
// // // //     ChangeNotifierProvider(
// // // //       create: (_) => BookmarkProvider(),
// // // //       child: const MyApp(),
// // // //     ),
// // // //   );
// // // // }
// // // //
// // // // class MyApp extends StatelessWidget {
// // // //   const MyApp({Key? key}) : super(key: key);
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       title: 'Web Bookmark App',
// // // //       theme: ThemeData.light(),
// // // //       home: const HomePage(),
// // // //     );
// // // //   }
// // // // }
// // //
// // // import 'package:flutter/material.dart';
// // //
// // // void main() {
// // //   runApp(MyApp());
// // // }
// // //
// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: MyHomePage(),
// // //     );
// // //   }
// // // }
// // //
// // // class MyHomePage extends StatefulWidget {
// // //   @override
// // //   _MyHomePageState createState() => _MyHomePageState();
// // // }
// // //
// // // class _MyHomePageState extends State<MyHomePage>
// // //     with SingleTickerProviderStateMixin {
// // //   late TabController _tabController;
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _tabController = TabController(length: 3, vsync: this); // Three tabs
// // //   }
// // //
// // //   @override
// // //   void dispose() {
// // //     _tabController.dispose();
// // //     super.dispose();
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('TabBarView Example'),
// // //         bottom: TabBar(
// // //           controller: _tabController,
// // //           tabs: [
// // //             Tab(icon: Icon(Icons.home), text: 'Home'),
// // //             Tab(icon: Icon(Icons.settings), text: 'Settings'),
// // //             Tab(icon: Icon(Icons.person), text: 'Profile'),
// // //           ],
// // //         ),
// // //       ),
// // //       body: TabBarView(
// // //         controller: _tabController,
// // //         children: [
// // //           Center(
// // //             child: Column(
// // //               children: [
// // //                 Text("paras saliya"),
// // //                 Text("paras saliya"),
// // //                 Text("paras saliya"),
// // //                 Text("paras saliya"),
// // //                 Text("paras saliya"),
// // //               ],
// // //             ),
// // //           ),
// // //           Center(child: Text('Settings Page')),
// // //           Center(child: Text('Profile Page')),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// //
// // import 'dart:async';
// //
// // import 'package:audioplayers/audioplayers.dart';
// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(const MaterialApp(home: _SimpleExampleApp()));
// // }
// //
// // class _SimpleExampleApp extends StatefulWidget {
// //   const _SimpleExampleApp();
// //
// //   @override
// //   _SimpleExampleAppState createState() => _SimpleExampleAppState();
// // }
// //
// // class _SimpleExampleAppState extends State<_SimpleExampleApp> {
// //   late AudioPlayer player = AudioPlayer();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //
// //     // Create the audio player.
// //     player = AudioPlayer();
// //
// //     // Set the release mode to keep the source after playback has completed.
// //     player.setReleaseMode(ReleaseMode.stop);
// //
// //     // Start the player as soon as the app is displayed.
// //     WidgetsBinding.instance.addPostFrameCallback((_) async {
// //       await player.play(UrlSource(
// //           'https://pagalfree.com/musics/128-Halki Halki Si - Asees Kaur 128 Kbps.mp3'));
// //       await player.resume();
// //     });
// //   }
// //
// //   @override
// //   void dispose() {
// //     // Release all sources and dispose the player.
// //     player.dispose();
// //
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Simple Player'),
// //       ),
// //       body: PlayerWidget(player: player),
// //     );
// //   }
// // }
// //
// // class PlayerWidget extends StatefulWidget {
// //   final AudioPlayer player;
// //
// //   const PlayerWidget({
// //     required this.player,
// //     super.key,
// //   });
// //
// //   @override
// //   State<StatefulWidget> createState() {
// //     return _PlayerWidgetState();
// //   }
// // }
// //
// // class _PlayerWidgetState extends State<PlayerWidget> {
// //   PlayerState? _playerState;
// //   Duration? _duration;
// //   Duration? _position;
// //
// //   StreamSubscription? _durationSubscription;
// //   StreamSubscription? _positionSubscription;
// //   StreamSubscription? _playerCompleteSubscription;
// //   StreamSubscription? _playerStateChangeSubscription;
// //
// //   bool get _isPlaying => _playerState == PlayerState.playing;
// //
// //   bool get _isPaused => _playerState == PlayerState.paused;
// //
// //   String get _durationText => _duration?.toString().split('.').first ?? '';
// //
// //   String get _positionText => _position?.toString().split('.').first ?? '';
// //
// //   AudioPlayer get player => widget.player;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     // Use initial values from player
// //     _playerState = player.state;
// //     player.getDuration().then(
// //           (value) => setState(() {
// //             _duration = value;
// //           }),
// //         );
// //     player.getCurrentPosition().then(
// //           (value) => setState(() {
// //             _position = value;
// //           }),
// //         );
// //     _initStreams();
// //   }
// //
// //   @override
// //   void setState(VoidCallback fn) {
// //     // Subscriptions only can be closed asynchronously,
// //     // therefore events can occur after widget has been disposed.
// //     if (mounted) {
// //       super.setState(fn);
// //     }
// //   }
// //
// //   @override
// //   void dispose() {
// //     _durationSubscription?.cancel();
// //     _positionSubscription?.cancel();
// //     _playerCompleteSubscription?.cancel();
// //     _playerStateChangeSubscription?.cancel();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final color = Theme.of(context).primaryColor;
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       children: <Widget>[
// //         Row(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             IconButton(
// //               key: const Key('play_button'),
// //               onPressed: _isPlaying ? null : _play,
// //               iconSize: 48.0,
// //               icon: const Icon(Icons.play_arrow),
// //               color: color,
// //             ),
// //             IconButton(
// //               key: const Key('pause_button'),
// //               onPressed: _isPlaying ? _pause : null,
// //               iconSize: 48.0,
// //               icon: const Icon(Icons.pause),
// //               color: color,
// //             ),
// //             IconButton(
// //               key: const Key('stop_button'),
// //               onPressed: _isPlaying || _isPaused ? _stop : null,
// //               iconSize: 48.0,
// //               icon: const Icon(Icons.stop),
// //               color: color,
// //             ),
// //           ],
// //         ),
// //         Slider(
// //           onChanged: (value) {
// //             final duration = _duration;
// //             if (duration == null) {
// //               return;
// //             }
// //             final position = value * duration.inMilliseconds;
// //             player.seek(Duration(milliseconds: position.round()));
// //           },
// //           value: (_position != null &&
// //                   _duration != null &&
// //                   _position!.inMilliseconds > 0 &&
// //                   _position!.inMilliseconds < _duration!.inMilliseconds)
// //               ? _position!.inMilliseconds / _duration!.inMilliseconds
// //               : 0.0,
// //         ),
// //         Text(
// //           _position != null
// //               ? '$_positionText / $_durationText'
// //               : _duration != null
// //                   ? _durationText
// //                   : '',
// //           style: const TextStyle(fontSize: 16.0),
// //         ),
// //       ],
// //     );
// //   }
// //
// //   void _initStreams() {
// //     _durationSubscription = player.onDurationChanged.listen((duration) {
// //       setState(() => _duration = duration);
// //     });
// //
// //     _positionSubscription = player.onPositionChanged.listen(
// //       (p) => setState(() => _position = p),
// //     );
// //
// //     _playerCompleteSubscription = player.onPlayerComplete.listen((event) {
// //       setState(() {
// //         _playerState = PlayerState.stopped;
// //         _position = Duration.zero;
// //       });
// //     });
// //
// //     _playerStateChangeSubscription =
// //         player.onPlayerStateChanged.listen((state) {
// //       setState(() {
// //         _playerState = state;
// //       });
// //     });
// //   }
// //
// //   Future<void> _play() async {
// //     await player.resume();
// //     setState(() => _playerState = PlayerState.playing);
// //   }
// //
// //   Future<void> _pause() async {
// //     await player.pause();
// //     setState(() => _playerState = PlayerState.paused);
// //   }
// //
// //   Future<void> _stop() async {
// //     await player.stop();
// //     setState(() {
// //       _playerState = PlayerState.stopped;
// //       _position = Duration.zero;
// //     });
// //   }
// // }
// //
// // //#endregion
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class TranslationProvider with ChangeNotifier {
//   String _translatedText = "";
//   String get translatedText => _translatedText;
//
//   String _apiKey =
//       "https://ai-translate.p.rapidapi.com/translate"; // Load the API key from shared preferences
//   String get apiKey => _apiKey;
//
//   Future<void> setApiKey(String apiKey) async {
//     _apiKey = apiKey;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('apiKey', apiKey);
//     notifyListeners();
//   }
//
//   Future<void> loadApiKey() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     _apiKey = prefs.getString('apiKey') ?? "";
//     notifyListeners();
//   }
//
//   Future<void> translateText(String text, String targetLanguage) async {
//     if (_apiKey.isEmpty) return;
//
//     final url = Uri.parse(
//         'https://translation.googleapis.com/language/translate/v2?key=$_apiKey');
//     try {
//       final response = await http.post(
//         url,
//         headers: {"Content-Type": "application/json"},
//         body: jsonEncode({
//           "q": text,
//           "target": targetLanguage,
//         }),
//       );
//
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         _translatedText = data['data']['translations'][0]['translatedText'];
//         notifyListeners();
//       } else {
//         throw Exception("Failed to translate text");
//       }
//     } catch (error) {
//       throw Exception("Error: $error");
//     }
//   }
// }
//
// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//             create: (_) => TranslationProvider()..loadApiKey()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Google Translate App',
//       home: TranslationPage(),
//     );
//   }
// }
//
// class TranslationPage extends StatelessWidget {
//   final TextEditingController _textController = TextEditingController();
//   final TextEditingController _apiKeyController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<TranslationProvider>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Google Translate"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _apiKeyController,
//               decoration: const InputDecoration(
//                 labelText: "Enter API Key",
//                 border: OutlineInputBorder(),
//               ),
//               onSubmitted: (value) {
//                 provider.setApiKey(value);
//               },
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               controller: _textController,
//               decoration: const InputDecoration(
//                 labelText: "Enter Text to Translate",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 provider.translateText(
//                     _textController.text, "es"); // Target: Spanish
//               },
//               child: const Text("Translate to Spanish"),
//             ),
//             const SizedBox(height: 20),
//             if (provider.translatedText.isNotEmpty)
//               Text(
//                 "Translated Text: ${provider.translatedText}",
//                 style:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     const MyApp(),
//   );
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDropped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LongPressDraggable(
              data: "paras",
              feedback: Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              childWhenDragging: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  )),
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            DragTarget(
              builder: (BuildContext context, accepted, rejected) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: isDropped ? Colors.blue : null,
                    border: Border.all(
                      color: isDropped ? Colors.white : Colors.red,
                      width: 5,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                );
              },
              onAccept: (data) {
                setState(() {
                  isDropped = true;
                });
              },
              onWillAccept: (data) {
                return data == "paras";
              },
            ),
          ],
        ),
      ),
    );
  }
}

//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   Color caughtColor = Colors.red;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//         centerTitle: true,
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children:[
//             Draggable(
//               data: Colors.orangeAccent,
//               onDraggableCanceled: (velocity, offset) {},
//               feedback: Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.orangeAccent.withOpacity(0.5),
//                 child: const Center(
//                   child: Text(
//                     'Box',
//                     style: TextStyle(
//                       color: Colors.white,
//                       decoration: TextDecoration.none,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                 ),
//               ),
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.orangeAccent,
//                 child: const Center(
//                   child: Text('box'),
//                 ),
//               ),
//             ),
//             DragTarget(onAccept: (Color color) {
//               caughtColor = color;
//             }, builder: (
//               BuildContext context,
//               List<dynamic> accepted,
//               List<dynamic> rejected,
//             ) {
//               return Container(
//                 width: 200,
//                 height: 200,
//                 color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
//                 child: const Center(
//                   child: Text('Drag here'),
//                 ),
//               );
//             })
//           ],
//         ),
//       ),
//     );
//   }
// }
