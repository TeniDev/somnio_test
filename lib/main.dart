import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/config/app_config.dart';

Future<void> main() async {
  await initConfig();

  runApp(
    const ProviderScope(
      child: SomnioBlogApp(),
    ),
  );
}
