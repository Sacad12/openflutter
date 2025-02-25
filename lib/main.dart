import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Define your color scheme
  final Color primaryColor =
      const Color.fromRGBO(139, 115, 85, 1.0); // Warm brown
  final Color secondaryColor =
      const Color.fromRGBO(245, 243, 237, 1.0); // Light cream
  final Color accentColor =
      const Color.fromRGBO(147, 112, 219, 1.0); // Rich purple-blue

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

// Use in your MaterialApp theme
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: secondaryColor,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: const MaterialColor(
            0xFF8B735D,
            {
              50: Color.fromRGBO(139, 115, 85, 0.1),
              100: Color.fromRGBO(139, 115, 85, 0.2),
              200: Color.fromRGBO(139, 115, 85, 0.3),
              300: Color.fromRGBO(139, 115, 85, 0.4),
              400: Color.fromRGBO(139, 115, 85, 0.5),
              500: Color.fromRGBO(139, 115, 85, 0.6),
              600: Color.fromRGBO(139, 115, 85, 0.7),
              700: Color.fromRGBO(139, 115, 85, 0.8),
              800: Color.fromRGBO(139, 115, 85, 0.9),
              900: Color.fromRGBO(139, 115, 85, 1.0),
            },
          ),
        ).copyWith(secondary: accentColor),
      ),
      home: const MyHomePage(title: 'Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
