import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:nady_system/firbase_check.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: kIsWeb
        ? const FirebaseOptions(
            apiKey: "AIzaSyAX-nXrY_eEjNgEn-S5_2CgWQ57TXvuzz4",
            authDomain: "nady-system-5000f.firebaseapp.com",
            projectId: "nady-system-5000f",
            storageBucket: "nady-system-5000f.appspot.com",
            messagingSenderId: "667659932098",
            appId: "1:667659932098:web:d4c06734c1dc55c388c65b",
            measurementId: "G-F8QTNTRV2Z",
            // databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
            // trackingId: 'G-0N1G9FLDZE',
            // iosClientId:
            //     '448618578101-gdvmskjsg1sk5v9pkifk73uqfr2ukta0.apps.googleusercontent.com',
            // iosBundleId: 'io.flutter.plugins.firebase.appcheck.example',
          )
        : const FirebaseOptions(
            apiKey: "AIzaSyAX-nXrY_eEjNgEn-S5_2CgWQ57TXvuzz4",
            authDomain: "nady-system-5000f.firebaseapp.com",
            projectId: "nady-system-5000f",
            storageBucket: "nady-system-5000f.appspot.com",
            messagingSenderId: "667659932098",
            appId: "1:667659932098:web:d4c06734c1dc55c388c65b",
            measurementId: "G-F8QTNTRV2Z",
            iosClientId:
                '667659932098-7j1dinse7ol7ohbvei366l8urc0uator.apps.googleusercontent.com',
            iosBundleId: 'com.example.nadySystem',
          ),
  );

  // Activate app check after initialization, but before
  // usage of any Firebase services.
  await FirebaseAppCheck.instance
      // Your personal reCaptcha public key goes here:
      .activate(
    webRecaptchaSiteKey: '6LcpUi8gAAAAADNmJp38p24jIIF_uOe64WnuiKUu',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirBaseAppChechPage(title: 'Flutter Demo Home Page'),
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
        title: Text(widget.title),
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
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
