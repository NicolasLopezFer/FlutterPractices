import 'package:flutter/material.dart';
import 'package:registro_app/pages/sign_in_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => SignInPage(),
  };
}
