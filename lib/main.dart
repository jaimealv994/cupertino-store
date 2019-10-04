import 'package:cupertino_store/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(CupertinoStoreApp());
}
