import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/env.dart';
import '../../domain/helpers/helpers.dart';

final jsonPlaceholderApiProvider = Provider<HttpHelper>(
  (ref) => HttpHelper(
    baseUrl: Env.jsonPlaceholderUrl,
  ),
);
