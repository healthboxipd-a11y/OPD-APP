import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state/auth_state.dart';
import 'utils/theme.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';

class HealthboxOpdApp extends StatelessWidget {
  const HealthboxOpdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthboxOPD Provider',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const _RootGate(),
    );
  }
}

class _RootGate extends StatelessWidget {
  const _RootGate();

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthState>();

    if (!_booted(context, auth)) return const SplashScreen();

    if (!auth.isAuthed) {
      return const LoginScreen();
    }

    return const HomeScreen();
  }

  bool _booted(BuildContext context, AuthState auth) {
    // Show splash briefly on first frame, then proceed.
    final ready = auth.user != null || auth.token == null;
    return ready;
  }
}
