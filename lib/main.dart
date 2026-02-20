import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ocultar barra de estado (pantalla completa)
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  // Configuración de pantalla completa y barra de estado
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blueAccent, // mismo color que el fondo
      statusBarIconBrightness: Brightness.light, // íconos claros
    ),
  );

  await Supabase.initialize(
    url: 'TU_SUPABASE_URL', // reemplaza con tu URL de Supabase
    anonKey: 'TU_SUPABASE_ANON_KEY', // reemplaza con tu anonKey
  );
  runApp(const KapitalApp());
}

class KapitalApp extends StatelessWidget {
  const KapitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kapital',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
