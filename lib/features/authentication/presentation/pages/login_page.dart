import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              key: Key('emailField'),
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              key: Key('passwordField'),
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              key: Key('loginButton'),
              onPressed: () {
                if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
                  // Simulasi login berhasil dan navigasi ke Home
                  context.go('/home');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
