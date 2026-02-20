import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'TU_SUPABASE_URL', // reemplaza con tu URL de Supabase
    anonKey: 'TU_SUPABASE_ANON_KEY', // reemplaza con tu anonKey
  );
  runApp(const KapitalApp()); // ahora sí puede ser const
}

class KapitalApp extends StatelessWidget {
  const KapitalApp({super.key}); // constructor const con super.key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kapital',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(), // no es const porque usa AuthService
      },
    );
  }
}
