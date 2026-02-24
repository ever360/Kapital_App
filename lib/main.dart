import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kapital_app/pages/register_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'pages/login_page.dart';
import 'pages/pantalla_prueba.dart';
import 'pages/home_page.dart';
import 'pages/prueba_login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  await Supabase.initialize(
    url: 'TU_SUPABASE_URL',
    anonKey: 'TU_SUPABASE_ANON_KEY',
  );

  runApp(const KapitalApp());
}

class KapitalApp extends StatelessWidget {
  const KapitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kapital Préstamos',

      // 🌞 MODO CLARO
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF1B5E20), // Verde financiero
          onPrimary: Colors.white,
          secondary: Color(0xFFD4AF37), // Dorado Kapital
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B5E20),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),

      // 🌙 MODO OSCURO
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF2E7D32), // Verde adaptado dark
          onPrimary: Colors.white,
          secondary: Color(0xFFD4AF37), // Dorado mantiene identidad
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          surface: Color(0xFF1E1E1E),
          onSurface: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),

      themeMode: ThemeMode.system,

      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/registroPagina': (context) => const PantallaPrueba(),
        '/PruebaLogin': (context) => const PruebaLogin(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
