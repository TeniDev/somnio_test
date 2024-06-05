import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import '../views/views.dart';

class SettingsPage extends BasePage {
  const SettingsPage({super.key});

  @override
  mobileBody(BuildContext context) {
    return const SettingPageMobile();
  }
}
