import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void _signInWithGoogle(BuildContext context) {
    // Aquí va tu lógica de login con Google
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Login con Google en construcción...")),
    );
  }

  void _signInWithApple(BuildContext context) {
    // Aquí va tu lógica de login con Apple
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Login con Apple en construcción...")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100], // Fondo suave para contraste
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
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

              // Campo contraseña
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Botón ingresar
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Lógica de login normal
                },
                child: const Text(
                  "Ingresar",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 20),

              // Botón Google
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
                label: const Text("Ingresar con Google"),
                onPressed: () => _signInWithGoogle(context),
              ),

              const SizedBox(height: 15),

              // Botón Apple
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const FaIcon(FontAwesomeIcons.apple, color: Colors.black),
                label: const Text("Ingresar con Apple"),
                onPressed: () => _signInWithApple(context),
              ),

              const SizedBox(height: 30),

              // Registro
              TextButton(
                onPressed: () {
                  // Navegar a pantalla de registro
                },
                child: const Text("¿No tienes cuenta? Regístrate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
