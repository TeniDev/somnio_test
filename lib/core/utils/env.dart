import 'package:envied/envied.dart';

import '../constants/constants.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: EnvConstants.jsonPlaceholderUrl, obfuscate: true)
  static String jsonPlaceholderUrl = _Env.jsonPlaceholderUrl;
}
