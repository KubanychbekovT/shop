
import 'package:shared_preferences/shared_preferences.dart';

import 'get_it.dart';

final getIt=GetIt();

Future<void> getItSetup() async {
  getIt.registerSingleton(await SharedPreferences.getInstance());
}