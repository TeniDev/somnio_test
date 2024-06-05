import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import '../views/views.dart';

class HomePage extends BasePage {
  const HomePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  mobileBody(BuildContext context) {
    return HomeViewMobile(
      child: child,
    );
  }
}
