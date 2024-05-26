import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini_gpt/myHomePage.dart';
import 'package:gemini_gpt/onboarding.dart';
import 'package:gemini_gpt/themeNotifier.dart';
import 'package:gemini_gpt/themes.dart';

void main() {
  runApp(
      ProviderScope(child: MyApp())
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode,
      home: Onboarding(),
    );
  }
}
