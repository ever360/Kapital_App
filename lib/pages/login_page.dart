import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  void _signInWithGoogle(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Login con Google en construcción...")),
    );
  }

  void _signInWithApple(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Login con Apple en construcción...")),
    );
  }

  void _recoverPassword(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Recuperación de contraseña en construcción..."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Kapital
              Image.asset('assets/logoKapital.png', height: 120),

              const SizedBox(height: 40),

              // Campo correo
              TextField(
                decoration: InputDecoration(
                  labelText: "Correo electrónico",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Campo contraseña con toggle de visibilidad
              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Olvidaste tu contraseña
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => _recoverPassword(context),
                  child: const Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Botón ingresar normal
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.amber, width: 2),
                  ),
                  elevation: 4,
                ),
                onPressed: () {
                  // Lógica de login normal
                },
                child: const Text(
                  "Ingresar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Divisor con "o"
              Row(
                children: const [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("o"),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),

              const SizedBox(height: 20),

              // Fila de íconos sociales
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botón Google
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                      size: 32,
                    ),
                    onPressed: () => _signInWithGoogle(context),
                  ),
                  const SizedBox(width: 40),
                  // Botón Apple
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                      size: 32,
                    ),
                    onPressed: () => _signInWithApple(context),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Registro
              TextButton(
                onPressed: () {
                  // Navegar a pantalla de registro
                },
                child: const Text(
                  "¿No tienes cuenta? Regístrate",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
