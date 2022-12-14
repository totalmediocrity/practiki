import 'package:flutter/material.dart';
import 'package:practiki/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  runApp(MyApp(sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  MyApp(this.sharedPreferences, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/secondpage': (context) =>
            Screen(count: sharedPreferences.getInt("counter") ?? 0)
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(
        sharedPreferences,
        title: '',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  const MyHomePage(this.sharedPreferences, {super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await widget.sharedPreferences.setInt("counter", _counter);
  }

  @override
  void initState() {
    _counter = widget.sharedPreferences.getInt("counter") ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Счетчик нажатий"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Icon(Icons.add))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          List<Object> args = <Object>[];
          args.add(_counter);
          Navigator.pushNamed(context, "/secondpage", arguments: args);
        },
        child: const Icon(Icons.auto_awesome),
        backgroundColor: Color.fromRGBO(162, 96, 114, 1),
      ),
    );
  }
}
