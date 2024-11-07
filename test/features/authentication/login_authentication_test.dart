import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/features/authentication/presentation/pages/login_page.dart';
import 'package:myapp/features/home/presentation/pages/home_page.dart';

void main(){

   testWidgets('Login screen displays email and password fields', (WidgetTester tester) async {
    // Build the login screen
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Verify if email and password input fields are present
    expect(find.byType(TextField), findsNWidgets(2)); // Dua TextField untuk email dan password
  });

  testWidgets('Login button triggers navigation when valid input is provided', (WidgetTester tester) async {
    // Build the login screen
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Find email and password input fields
    final emailField = find.byKey(Key('emailField'));
    final passwordField = find.byKey(Key('passwordField'));

    // Masukkan email dan password yang valid
    await tester.enterText(emailField, 'test@domain.com');
    await tester.enterText(passwordField, 'password123');

    // Temukan tombol login dan klik
    final loginButton = find.byKey(Key('loginButton'));
    await tester.tap(loginButton);

    // Tunggu sampai navigasi selesai
    await tester.pumpAndSettle();

    // Verifikasi bahwa aplikasi menavigasi ke HomeScreen
    expect(find.byType(HomePage), findsOneWidget);
  });
}