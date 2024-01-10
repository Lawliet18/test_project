import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/bootstrap.dart';
import 'package:test_app/core/environments/development/firebase_options.dart';
import 'package:test_app/presentation/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await bootstrap(() => const MyApp());
}
