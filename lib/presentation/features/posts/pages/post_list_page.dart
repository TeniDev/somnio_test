import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import '../views/views.dart';

class PostListPage extends BasePage {
  const PostListPage({super.key});

  @override
  mobileBody(BuildContext context) {
    return const PostListViewMobile();
  }
}
